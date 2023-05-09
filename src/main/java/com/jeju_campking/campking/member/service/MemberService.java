package com.jeju_campking.campking.member.service;


import com.campking.member.dto.request.MemberLoginRequestDTO;
import com.campking.member.dto.request.MemberSignRequestDTO;
import com.campking.member.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
@RequiredArgsConstructor
@Slf4j
public class MemberService {
    private final MemberMapper memberMapper;

    public boolean login(MemberLoginRequestDTO dto) throws SQLException {
        log.info("memberService login execute : {}", dto);

        boolean isLogin = memberMapper.login(dto);

        if (!isLogin) {
            log.warn("memberService : 로그인 실패 !");
            throw new SQLException("memberService : 로그인 실패 !");
        }

        return isLogin;
    }

    public boolean sign(MemberSignRequestDTO dto) throws SQLException {
        log.info("memberService sign : {} ", dto);

        boolean isSign = memberMapper.sign(dto);

        if (!isSign) {
            log.warn("memberService : 회원가입 실패 !");
            throw new SQLException("memberService : 회원가입 실패 !");
        }

        return memberMapper.sign(dto);
    }
}
