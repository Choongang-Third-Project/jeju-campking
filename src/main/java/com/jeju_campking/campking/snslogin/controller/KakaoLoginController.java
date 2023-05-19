package com.jeju_campking.campking.snslogin.controller;

import com.jeju_campking.campking.snslogin.service.KakaoLoginService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.HashMap;

@Controller
@Slf4j
@RequiredArgsConstructor
public class KakaoLoginController {

    @Value("${sns.kakao.app-key}")
    private String kakaoAppKey;
    @Value("${sns.kakao.redirect-uri}")
    private String kakaoRedirectURI;

    private final KakaoLoginService kakaoLoginService;

    @GetMapping("/kakao/login")
    public String kakaoLogin() {
        String requestURI = String.format("https://kauth.kakao.com/oauth/authorize?client_id=%s&redirect_uri=%s&response_type=code", kakaoAppKey, kakaoRedirectURI);
        return "redirect:" + requestURI;
    }

    @GetMapping("/sns/kakao")
    public String snsKaKao(String code) {
        log.info("{}", code);

        HashMap<String, String> map = new HashMap<>();
        map.put("appKey", kakaoAppKey);
        map.put("redirect", kakaoRedirectURI);
        map.put("code", code);

        kakaoLoginService.kakaoService(map);

        return "";
    }


}
