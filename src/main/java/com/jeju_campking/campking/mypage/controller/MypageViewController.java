package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.service.MypageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/*
    데이터 전송없이 마이페이지 화면만 띄워주는 용도의 컨트롤러입니다.
 */

@Controller
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/mypage")
@Slf4j
public class MypageViewController {

    private final MypageService mypageService;

    @GetMapping("/{memberNumber}")
    public String findMember(@PathVariable Long memberNumber) {
        return "mypage/mypage";
    }

    @GetMapping("/update/{memberNumber}")
    public String updateMember(@PathVariable Long memberNumber) {
        return "mypage/update";
    }
}

