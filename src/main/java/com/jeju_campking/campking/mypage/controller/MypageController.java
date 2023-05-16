package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.service.MypageService;
import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/mypage")
@Slf4j
public class MypageController {

    private final MypageService mypageService;

    @GetMapping("/{memberNumber}")
    public ResponseEntity<?> findMember(@PathVariable Long memberNumber) {
        MypageMemberResponseDTO member = mypageService.findMember(memberNumber);
        return ResponseEntity.ok().body(member);
    }


    @GetMapping("/send/{memberNumber}")
    public ResponseEntity<?> findSendMessage(@PathVariable Long memberNumber) {
        List<PartyMessage> sendMessageList = mypageService.findSendMessage(memberNumber);

        return ResponseEntity.ok().body(sendMessageList);
    }
    @GetMapping("/receive/{memberNumber}")
    public ResponseEntity<?> findReceiveMessage(@PathVariable Long memberNumber) {
        List<PartyMessage> sendMessageList = mypageService.findReceiveMessage(memberNumber);

        return ResponseEntity.ok().body(sendMessageList);
    }
    @GetMapping("/asdfadsf")
    public ModelAndView test() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/");
        mv.setViewName("/path/경로");
        mv.addObject("data", null);

        return mv;
    }

}
