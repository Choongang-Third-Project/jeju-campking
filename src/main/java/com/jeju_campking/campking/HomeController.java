package com.jeju_campking.campking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        //todo: 나중에 index 파일로 변경하기!
        return "/index";
    }

    @GetMapping("/join")
    public String join() {
        //todo: 회원가입 페이지로 이동하기
        return "/member/signup";
    }

    @GetMapping("/login")
    public String login(){
        //todo : 로그인 페이지로 이동하기
        return "/member/login";
    }

    @GetMapping("/notice")
    public String notice(){
        //todo : 공지사항 페이지로 이동하기
        return "/board/list";
    }

    @GetMapping("/camp")
    public String camp(){
        //todo : 캠핑장 페이지로 이동하기
        return "/campBoard/list";
    }

    @GetMapping("/party")
    public String party(){
        //todo : 같이갈 사람 페이지로 이동하기
        return "/yejin/party2";
    }




}
