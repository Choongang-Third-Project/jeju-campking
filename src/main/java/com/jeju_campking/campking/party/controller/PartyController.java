package com.jeju_campking.campking.party.controller;

import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import com.jeju_campking.campking.party.service.PartyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * TODO : 파티 모집 게시판의 URL
 *  /parties/all-list/{type}/{sort} : 타입별로, 정렬기준으로 모든 게시판 조회
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/parties")
@Slf4j
public class PartyController {
    private final PartyService partyService;

    @GetMapping("/all-list/{type}/{sort}")
    public ResponseEntity<?> findAllBySort(
            @PathVariable String type,
            @PathVariable String sort
    ) {
        log.info("partyController/findAllBySort : type= {}, sort= {}", type, sort);

        List<PartyAllListResponseDTO> allBySort = partyService.findAllBySort(type, sort);

        return ResponseEntity.ok().body(allBySort);
    }
}

