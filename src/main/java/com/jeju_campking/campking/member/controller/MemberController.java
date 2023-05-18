package com.jeju_campking.campking.member.controller;

// TODO : 멤버의 회원가입, 로그인을 담당하는 컨트롤러


import com.jeju_campking.campking.member.dto.request.MemberLoginRequestDTO;
import com.jeju_campking.campking.member.dto.request.MemberSignRequestDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.member.service.LoginResult;
import com.jeju_campking.campking.member.service.MemberService;
import com.jeju_campking.campking.util.LoginUtil;
import com.jeju_campking.campking.util.upload.FileUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.http.HttpResponse;
import java.sql.SQLException;

import static com.jeju_campking.campking.member.service.LoginResult.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
@Slf4j
//@CrossOrigin(origins = "http://127.0.0.1:5500")
public class MemberController {

    @Value("${file.upload.root-path}")
    private String rootPath;
    private final MemberService memberService;

    // 회원가입 양식 페이지 요청
//    @GetMapping("/signup")
//    public String signUp() {
//        log.info("/member/sign GET - forwarding to jsp");
//        return "member/signup";
//    }

    // 회원가입 처리 요청
    @PostMapping("/signup")
    public String signUp(
            @Validated MemberSignRequestDTO dto,
            Model model
            , BindingResult result
    ) {
        log.info("/member/signup {}", dto);

        MultipartFile profileImage = dto.getProfileImage();
        log.info("프로필사진 이름: {}", dto.getProfileImage().getOriginalFilename());

        String savePath = null;
        if (!profileImage.isEmpty()) {

            savePath = FileUtil.uploadFile(profileImage, rootPath);
        }

        Member member = dto.toEntity();
        member.setProfileImage(savePath);

        boolean isSign = false;
        try {
            isSign = memberService.sign(member);
            if (!isSign) {
                model.addAttribute("signup", isSign);
                return "redirect:/join";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            model.addAttribute("signup", isSign);
            return "redirect:/join";
        }

        model.addAttribute("signup", isSign);
        return "redirect:/login";
    }

    // 로그인 양식 페이지 요청
//    @GetMapping("/login")
//    public String login() {
//        log.info("/member/login GET - forwarding to jsp");
//        return "member/login";
//    }


    // 로그인 검증 요청
    @PostMapping("/login")
    public String login(
            MemberLoginRequestDTO dto
            , RedirectAttributes ra
            , HttpServletRequest request
            , HttpServletResponse response
    ) {
        log.info("/member/login {}", dto);

        // 로그인 검증 서비스
        LoginResult loginResult = memberService.authenticate(dto, request.getSession(), response);


        // 로그인 성공
        // TODO : 로그인한 회원 객체를 가지고 메인페이지로 돌아가야합니다.
        if (loginResult == SUCCESS) {
            log.info("loginResult {}", loginResult);
//            Member loginMember = memberService.login(dto);
//            model.addAttribute(loginMember);

            // 세션
            memberService.maintainLoginState(request.getSession(), dto.getMemberEmail());
            //todo: home으로 이동해야 함!
            return "redirect:/jeju-camps";
        }
        // 로그인 실패

        ra.addFlashAttribute("loginResult", loginResult);
        return "redirect:/login"; // FAIL 리턴
    }

    // 회원가입 시 이메일, 닉네임, 전화번호 중복검사 - REST API
    @GetMapping("/check")
    @ResponseBody
    public ResponseEntity<?> check(String type, String keyword) {
        log.info("/member/check?type={}&keyword={} ASYNC GET", type, keyword);

        boolean flag = memberService.checkSignUpValue(type, keyword);
        return ResponseEntity.ok().body(flag);
    }


    // 로그아웃 요청 처리
    @GetMapping("logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();

        // 로그인 중인지 확인
        if (LoginUtil.isLogin(session)) {

            if (LoginUtil.isAutoLogin(request)) {
                memberService.autoLoginClear(request, response);
            }

            session.removeAttribute(LoginUtil.LOGIN_KEY);
            session.invalidate();
            return "redirect:/";
        }
        return "redirect:/";
    }


}