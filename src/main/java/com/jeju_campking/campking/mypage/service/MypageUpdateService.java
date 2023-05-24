package com.jeju_campking.campking.mypage.service;

import com.jeju_campking.campking.member.dto.response.LoginUserResponseDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.dto.request.MypageUpdateMemberRequestDTO;
import com.jeju_campking.campking.mypage.repository.MypageUpdateMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

import static com.jeju_campking.campking.util.LoginUtil.LOGIN_KEY;

@Service
@RequiredArgsConstructor
@Slf4j
public class MypageUpdateService {

    private final MypageUpdateMapper mypageUpdateMapper;
    private final PasswordEncoder encoder;

    public boolean checkSignUpValue(String type, String keyword) {
        int flagNum = mypageUpdateMapper.isDuplicate(type, keyword);
        return flagNum == 1;
    }

    public Member findMember(Long memberNumber) {
        log.info("MypageService findMember : {}", memberNumber);
        return mypageUpdateMapper.findMember(memberNumber);
    }

    public boolean updateMember(
            final MypageUpdateMemberRequestDTO dto,
            final String savePath,
            HttpSession session
    ) {
        log.info("MypageService updateMember : {}", dto);
        log.info("MypageService savePath : {}", savePath);

        Member member = dto.toEntity();
        // 프로필사진 이미지 경로
        member.setProfileImage(savePath);
//        // 전화번호에서 하이픈 제거
//        member.setMemberPhone(member.getMemberPhone().replaceAll("-", ""));
        // 비밀번호 암호화
        member.setMemberPassword(encoder.encode(member.getMemberPassword()));





        // 현재 로그인한 사람의 화면에 보여줄 일부 정보
        LoginUserResponseDTO dto2 = LoginUserResponseDTO.builder()
                .memberEmail(member.getMemberEmail())
                .memberName(member.getMemberName())
                .memberNickname(member.getMemberNickname())
                .memberGender(member.getMemberGender())
                .auth(member.getMemberAuth())
                .profile(member.getProfileImage())
                .memberNumber(member.getMemberNumber())
                .build();

        // 위 정보 세션에 저장
        session.setAttribute(LOGIN_KEY, dto2); // hashmap
        // 세션 수명 설정
        session.setMaxInactiveInterval(60 * 60); //1시간

        
        return mypageUpdateMapper.updateMember(member);
    }

}
