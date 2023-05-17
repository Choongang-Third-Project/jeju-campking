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

@Controller
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/mypage")
@Slf4j
public class MypageViewController {

    private final MypageService mypageService;

    @GetMapping("/{memberNumber}")
    public String findMember(@PathVariable Long memberNumber) {
//        MypageMemberResponseDTO member = mypageService.findMember(memberNumber);
        return "mypage/mypage";
    }
}

