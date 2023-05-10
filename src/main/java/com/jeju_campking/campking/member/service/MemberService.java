package com.jeju_campking.campking.member.service;


import com.jeju_campking.campking.member.dto.request.MemberLoginRequestDTO;
import com.jeju_campking.campking.member.dto.request.MemberSignRequestDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.member.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
@RequiredArgsConstructor
@Slf4j
public class MemberService {

    private final MemberMapper memberMapper;

    public Member login(MemberLoginRequestDTO dto) throws SQLException {
        log.info("memberService login execute : {}", dto);

        Member loginMember = memberMapper.login(dto);

        if (loginMember == null) {
            log.warn("memberService : 로그인 실패 !");
            throw new SQLException("memberService : 로그인 실패 !");
        }

        return loginMember;
    }

    // 회원가입 처리 서비스
    public boolean sign(MemberSignRequestDTO dto) throws SQLException {
        log.info("memberService sign : {} ", dto);

        boolean isSign = memberMapper.sign(dto);

        if (!isSign) {
            log.warn("memberService : 회원가입 실패 !");
//            throw new SQLException("memberService : 회원가입 실패 !");
        }
        return isSign;
    }

    // 회원가입 시 이메일, 닉네임, 전화번호 중복 검사 처리 서비스
    // 중복일 시 true 리턴, 중복이 아닐 시 false 리턴
    public boolean checkSignUpValue(String type, String keyword) {
        int flagNum = memberMapper.isDuplicate(type, keyword);
        return flagNum == 1;
    }

    // 로그인 성공여부 검증 서비스
    public String authenticate(MemberLoginRequestDTO dto) {

        Member foundMember = memberMapper.login(dto);

        // 회원가입 여부 확인
        if (foundMember == null) {
            log.info("{} - 회원가입 필요", dto.getMemberEmail());
            return "FAIL";
        }
        // 비밀번호 일치 확인
        // TODO : 비밀번호 암호화 후 matches 로 변경
        if (!dto.getMemberPassword().equals(foundMember.getMemberPassword())) {
            log.info("비밀번호 불일치", dto.getMemberEmail());
            return "FAIL";
        }
        log.info("{}님 로그인 성공", dto.getMemberEmail());
        return "SUCCESS";
    }
}
