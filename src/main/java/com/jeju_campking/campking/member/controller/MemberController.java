package com.jeju_campking.campking.member.controller;

// TODO : 멤버의 회원가입, 로그인을 담당하는 컨트롤러


import com.jeju_campking.campking.member.dto.request.MemberLoginRequestDTO;
import com.jeju_campking.campking.member.dto.request.MemberSignRequestDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/v1/member")
@Slf4j
@CrossOrigin(origins = "http://127.0.0.1:5500")
public class MemberController {

    private final MemberService memberService;

    // 회원가입
    @PostMapping("/signup")
    public ResponseEntity<?> sign(
            @Validated @RequestBody MemberSignRequestDTO dto,
            BindingResult result
    ) {
        log.info("/member/sign {}", dto);

        // 입력값 검증
        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }

        // 회원 가입 성공여부 검증
        try {
            boolean isSign = memberService.sign(dto);

        } catch (SQLException e) {
            log.warn("500 Status code response!! caused by : {}", e.getMessage());
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }

        return ResponseEntity.ok().body("회원가입 성공");
    }

    // 로그인 실패 or 성공
    @PostMapping("/signin")
    public ResponseEntity<?> login(MemberLoginRequestDTO dto) {
        log.info("/member/signin {}", dto);

        try {
            Member loginMember = memberService.login(dto);
            return ResponseEntity
                    .ok()
                    .body(loginMember);
        } catch (Exception e) {
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }


}