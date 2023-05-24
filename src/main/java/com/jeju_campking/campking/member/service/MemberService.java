package com.jeju_campking.campking.member.service;


import com.jeju_campking.campking.member.dto.request.AutoLoginDTO;
import com.jeju_campking.campking.member.dto.request.MemberLoginRequestDTO;
import com.jeju_campking.campking.member.dto.response.LoginUserResponseDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.member.repository.MemberMapper;
import com.jeju_campking.campking.util.LoginUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.time.LocalDateTime;

import static com.jeju_campking.campking.member.service.LoginResult.*;
import static com.jeju_campking.campking.util.LoginUtil.*;

@Service
@RequiredArgsConstructor
@Slf4j
public class MemberService {

    private final MemberMapper memberMapper;
    private final PasswordEncoder encoder;

    public Member login(MemberLoginRequestDTO dto) {
        log.info("memberService login execute : {}", dto);

        Member loginMember = memberMapper.login(dto);

        if (loginMember == null) {
            log.warn("memberService : 로그인 실패 !");
//            throw new SQLException("memberService : 로그인 실패 !");
        }

        return loginMember;
    }

    // 회원가입 처리 서비스
    public boolean sign(Member member) throws SQLException {
        log.info("memberService sign : {} ", member.getProfileImage());
        member.setMemberPassword(encoder.encode(member.getMemberPassword()));

        boolean isSign = memberMapper.sign(member);

        if (!isSign) {
            log.warn("memberService : 회원가입 실패 !");
            return false;
//            throw new SQLException("memberService : 회원가입 실패 !");
        }

        return true;
    }

    // 회원가입 시 이메일, 닉네임, 전화번호 중복 검사 처리 서비스
    // 중복일 시 true 리턴, 중복이 아닐 시 false 리턴
    public boolean checkSignUpValue(String type, String keyword) {
        int flagNum = memberMapper.isDuplicate(type, keyword);
        return flagNum == 1;
    }

    // 로그인 성공여부 검증 서비스
    public LoginResult authenticate(
            MemberLoginRequestDTO dto
            , HttpSession session,
            HttpServletResponse response) {
        log.info("memberService/authenticate : {}", dto);
        Member foundMember = memberMapper.login(dto);
        log.info("memberService/authenticate : {}", foundMember);


        // 회원가입 여부 확인
        if (foundMember == null) {
            log.info("{} - 회원가입 필요", dto.getMemberEmail());
            return NO_ACC;
        }
        // 비밀번호 일치 확인
        if (!encoder.matches(dto.getMemberPassword(), foundMember.getMemberPassword())) {
            log.info("비밀번호 불일치", dto.getMemberEmail());
            return NO_PW;
        }

        log.info("isAutoLogin ??????????????? : {}", dto.isAutoLogin());
        if (dto.isAutoLogin()) {
            // 1. 쿠키 생성
            // - 쿠키 값에 세션 아이디를 저장한다.
            // - key : value = value 는 session ID
            Cookie cookie = new Cookie(AUTO_LOGIN_COOKIE, session.getId());


            // 2. 쿠키 셋팅 - 수명이랑 사용 경로
            // 전체 경로에서 사용할 것이다.
            int cookieTime = 60 * 60 * 24 * 90;
            cookie.setMaxAge(cookieTime);
            cookie.setPath("/");

            // 3. 쿠키를 클라이언트에 응답 전송
            response.addCookie(cookie);

            // 4. DB 에도 쿠키에 저장된 값과 수명을 저장해야 한다
            // 년월일 시분초로 저장해야함.
            // 지금 시간 + 90일
            memberMapper.saveAutoLogin(
                    AutoLoginDTO.builder()
                            .account(dto.getMemberEmail())
                            .memberCookieDate(LocalDateTime.now().plusDays(90))
                            .sessionId(session.getId())
                            .build()
            );

        }

        log.info("{}님 로그인 성공", dto.getMemberEmail());
        return SUCCESS;
    }

    // 세션
    public void maintainLoginState(HttpSession session, String memberEmail) {

        // 로그인이 성공하면 세션에 회원정보 저장
        Member member = getMember(memberEmail);

        // 현재 로그인한 사람의 화면에 보여줄 일부 정보
        LoginUserResponseDTO dto = LoginUserResponseDTO.builder()
                .memberEmail(member.getMemberEmail())
                .memberName(member.getMemberName())
                .memberNickname(member.getMemberNickname())
                .memberGender(member.getMemberGender())
                .auth(member.getMemberAuth())
                .profile(member.getProfileImage())
                .memberNumber(member.getMemberNumber())
                .build();

        // 위 정보 세션에 저장
        session.setAttribute(LOGIN_KEY, dto); // hashmap
        // 세션 수명 설정
        session.setMaxInactiveInterval(60 * 60); //1시간
    }


    public void autoLoginClear(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie = WebUtils.getCookie(request, AUTO_LOGIN_COOKIE);


        if (cookie != null) {
            cookie.setMaxAge(0);
            cookie.setPath("/");
            response.addCookie(cookie);

            memberMapper.saveAutoLogin(
                    AutoLoginDTO.builder()
                            .sessionId("none")
                            .memberCookieDate(LocalDateTime.now())
                            .account(LoginUtil.getCurrentLoginMemberId(request.getSession()))
                            .build()
            );
        }

    }


    // 멤버의 모든 정보를 가져오는 서비스
    public Member getMember(String memberEmail) {
        return memberMapper.findMember(memberEmail);
    }
}
