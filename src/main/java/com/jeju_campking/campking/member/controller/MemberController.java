package com.jeju_campking.campking.member.controller;

// TODO : 멤버의 회원가입, 로그인을 담당하는 컨트롤러


import com.campking.member.dto.request.MemberLoginRequestDTO;
import com.campking.member.dto.request.MemberSignRequestDTO;
import com.campking.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
@Slf4j
public class MemberController {
    private final MemberService memberService;

    // 회원가입
    @GetMapping("/sign")
    public ResponseEntity<?> sign(MemberSignRequestDTO dto) {
        log.info("/member/sign {}", dto);

        try {
            boolean isSign = memberService.sign(dto);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return null;
    }

    // 로그인 실패 or 성공
    @PostMapping("/login")
    public String login(MemberLoginRequestDTO dto) {
        log.info("/member/login {}", dto);

        try {
            boolean isLogin = memberService.login(dto);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return null;
    }


}