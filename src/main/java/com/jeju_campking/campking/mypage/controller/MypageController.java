package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.service.MypageService;
import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/receive-message")
    public ResponseEntity<?> findReceiveMessage(Long memberNumber) {
        List<PartyMessage> receiveMessage = mypageService.findReceiveMessage(Long.valueOf(memberNumber));
        return ResponseEntity.ok().body(receiveMessage);
    }

}
