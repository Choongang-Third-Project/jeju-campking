package com.jeju_campking.campking.party.controller;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.entity.PartyMessage;
import com.jeju_campking.campking.party.repository.PartyMessageMapper;
import com.jeju_campking.campking.party.service.PartyMessageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/party-message")
@Slf4j
public class PartyMessageController {

    private final PartyMessageService partyMessageService;

    @GetMapping("/all-list/{memberNumber}")
    public ResponseEntity<?> findAll(
            @PathVariable Long memberNumber) throws SQLException {

        log.info("partyMessage.findAll.info : {}", memberNumber);

        List<PartyMessage> messageList = partyMessageService.findAll(memberNumber);

        if (messageList == null) {
            return ResponseEntity
                    .badRequest()
                    .body("조회할 메세지가 없습니다.");
        }

        return ResponseEntity
                .ok()
                .body(messageList);
    }

    @PostMapping("/send")
    public ResponseEntity<?> send(
            @RequestBody PartyMessageRequestDTO dto,
            BindingResult result) {
        log.info("partyMessage.send.info : {}", dto);

        // 입력값 검증
        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }
        // 메세지 전송 성공여부 검증
        try {
            if (!partyMessageService.send(dto)) {
               return ResponseEntity
                       .badRequest()
                       .body("메세지 전송에 실패했습니다.");
            }
            return ResponseEntity
                    .ok()
                    .body(dto);
        } catch (Exception e) {
            log.warn("partyMessageService.send.warn {}", dto);
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }
}
