package com.jeju_campking.campking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
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

//    @GetMapping("/jeju-camps")
//    public String jejuCamps(){
//        //todo : 제주 캠프 메인 페이지로 이동하기
//        return "/jeju-camps";
//    }

    @GetMapping("/jeju-camps/info")
    public String camp(){
        //todo : 캠핑장 페이지로 이동하기
        return "/campBoard/list";
    }

    @GetMapping("/jeju-camps/parties")
    public String party(){
        //todo : 같이갈 사람 페이지로 이동하기
        return "/yejin/party2";
    }

    @GetMapping("/jeju-camps/notices")
    public String notice(){
        return "/board/list";
    }



}
