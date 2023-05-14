package com.jeju_campking.campking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        //todo: 나중에 index 파일로 변경하기!
        return "/";
    }

}
