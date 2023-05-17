package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypagePartyResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypagePartyMessageResponseDTO;
import com.jeju_campking.campking.mypage.service.MypageService;
import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/api/v1/mypages")
@Slf4j
public class MypageController {

    private final MypageService mypageService;

    @GetMapping("/{memberNumber}")
    public ResponseEntity<?> findMember(@PathVariable Long memberNumber) {
        MypageMemberResponseDTO member = mypageService.findMember(memberNumber);
        log.info("MypageController findMember : {}", member);
        return ResponseEntity.ok().body(member);
    }

    @GetMapping("/party/{memberNumber}")
    public ResponseEntity<?> findParty(@PathVariable Long memberNumber) {
        List<MypagePartyResponseDTO> partyList = mypageService.findParty(memberNumber);
        log.info("mypage partyList ; {}", partyList);
        return ResponseEntity.ok().body(partyList);
    }

    @GetMapping("/send/{memberNumber}")
    public ResponseEntity<?> findSendMessage(@PathVariable Long memberNumber) {
        List<MypagePartyMessageResponseDTO> sendMessageList = mypageService.findSendMessage(memberNumber);
        log.info("mypage sendMessageList : {}", sendMessageList);
        return ResponseEntity.ok().body(sendMessageList);
    }
    @GetMapping("/receive/{memberNumber}")
    public ResponseEntity<?> findReceiveMessage(@PathVariable Long memberNumber) {
        List<MypagePartyMessageResponseDTO> receiveMessageList = mypageService.findReceiveMessage(memberNumber);
        log.info("mypage sendMessageList : {}", receiveMessageList);
        return ResponseEntity.ok().body(receiveMessageList);
    }
/*    @GetMapping("/asdfadsf")
    public ModelAndView test() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/");
        mv.setViewName("/path/경로");
        mv.addObject("data", null);

        return mv;
    }*/

}
