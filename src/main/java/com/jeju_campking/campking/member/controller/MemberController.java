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
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.sql.SQLException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
@Slf4j
//@CrossOrigin(origins = "http://127.0.0.1:5500")
public class MemberController {

    private final MemberService memberService;

    // 회원가입 양식 페이지 요청
    @GetMapping("/signup")
    public String signUp() {
        log.info("/member/sign GET - forwarding to jsp");
        return "member/signup";
    }

    // 회원가입 처리 요청
    @PostMapping("/signup")
    public ResponseEntity<?> signUp(
            @Validated MemberSignRequestDTO dto,
            BindingResult result
    ) {
        log.info("/member/signup {}", dto);

        // 입력값 검증
        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }

        // 회원 가입 성공여부 검증
        try {
            // 회원가입 성공
            if(memberService.sign(dto)) {
                return ResponseEntity
                        .ok()
                        .body("SUCCESS");
            }
        } catch (SQLException e) {
            // 회원가입 실패
            log.warn("500 Status code response!! caused by : {}", e.getMessage());
            return ResponseEntity
                    .internalServerError()
                    .body("FAIL");
        }

        return ResponseEntity.ok().body("FAIL");
    }

    // 로그인 양식 페이지 요청
    @GetMapping("/login")
    public String login() {
        log.info("/member/login GET - forwarding to jsp");
        return "member/login";
    }

    // 로그인 검증 요청
    @PostMapping("/login")
    public String login(MemberLoginRequestDTO dto
                        , RedirectAttributes ra
                        , Model model) {
        log.info("/member/login {}", dto);

        // 로그인 검증 서비스
        String loginResult = memberService.authenticate(dto);

        ra.addFlashAttribute("loginResult", loginResult);

        // 로그인 성공
        // TODO : 로그인한 회원 객체를 가지고 메인페이지로 돌아가야합니다.
        try {
            if (loginResult.equals("SUCCESS")) {
                log.info("loginResult {}", loginResult);
                Member loginMember = memberService.login(dto);
                log.info(loginMember.getMemberNickname(), loginMember.getMemberGender());
                model.addAttribute(loginMember);
                return "/member/signup";
            }
            // 로그인 실패
        } catch (Exception e) {
            return "redirect:/member/login"; // FAIL 리턴
        }
        return "redirect:/member/login"; // FAIL 리턴
    }

    // 회원가입 시 이메일, 닉네임, 전화번호 중복검사 - REST API
    @GetMapping("/check")
    @ResponseBody
    public ResponseEntity<?> check(String type, String keyword) {
        log.info("/member/check?type={}&keyword={} ASYNC GET", type, keyword);

        boolean flag = memberService.checkSignUpValue(type, keyword);
        return ResponseEntity.ok().body(flag);
    }


}