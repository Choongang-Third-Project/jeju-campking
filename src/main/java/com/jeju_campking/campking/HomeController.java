package com.jeju_campking.campking;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @GetMapping("api/v1/items")
    public String food() {
        return "/item/items";
    }

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
    public String login() {
        //todo : 로그인 페이지로 이동하기
        return "/member/login";
    }

//    @GetMapping("/jeju-camps")
//    public String jejuCamps(){
//        //todo : 제주 캠프 메인 페이지로 이동하기
//        return "/jeju-camps";
//    }

    @GetMapping("/jeju-camps/info")
    public String camp(@RequestParam(value = "search", required = false, defaultValue = "") String search, Model model) {
        //todo : 캠핑장 페이지로 이동하기
        model.addAttribute("s", search);
        return "/campBoard/list";
    }

    @GetMapping("/jeju-camps/parties")
    public String party() {
        //todo : 같이갈 사람 페이지로 이동하기
        return "/yejin/party";
    }

    @GetMapping("/jeju-camps/notices")
    public String notice() {
        return "/board/list";
    }


}
