package com.jeju_campking.campking.mypage.service;

import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.dto.request.MypageUpdateMemberRequestDTO;
import com.jeju_campking.campking.mypage.repository.MypageUpdateMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

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
            final String savePath
    ) {
        log.info("MypageService updateMember : {}", dto);
        log.info("MypageService savePath : {}", savePath);

        Member member = dto.toEntity();
        // 프로필사진 이미지 경로
        member.setProfileImage(savePath);
        // 전화번호에서 하이픈 제거
        member.setMemberPhone(member.getMemberPhone().replaceAll("-", ""));
        // 비밀번호 암호화
        member.setMemberPassword(encoder.encode(member.getMemberPassword()));

        return mypageUpdateMapper.updateMember(member);
    }

}
