package com.jeju_campking.campking.camp.controller;

import com.jeju_campking.campking.camp.service.CampService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//TODO: 캠프장 관련 데이터 보여주기
@Controller
@RequiredArgsConstructor
@RequestMapping("/camp") //공동 URL
public class CampController {
    private final CampService campService;


    // 전체 캠핑장 조회 요청

}
