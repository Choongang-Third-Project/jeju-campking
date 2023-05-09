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

    public boolean sign(MemberSignRequestDTO dto) throws SQLException {
        log.info("memberService sign : {} ", dto);

        boolean isSign = memberMapper.sign(dto);

        if (!isSign) {
            log.warn("memberService : 회원가입 실패 !");
            throw new SQLException("memberService : 회원가입 실패 !");
        }

        return isSign;
    }
}
