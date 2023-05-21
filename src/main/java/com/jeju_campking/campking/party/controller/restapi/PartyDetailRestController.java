package com.jeju_campking.campking.party.controller.restapi;

import com.jeju_campking.campking.common.reponse.ApplicationResponse;
import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.service.PartyDetailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/parties")
@Slf4j
public class PartyDetailRestController {

    private final PartyDetailService partyDetailService;

    @PostMapping()
    public ApplicationResponse<?> send(PartyMessageRequestDTO dto) {
        int send = partyDetailService.send(dto);
        return ApplicationResponse.ok(send);
    }

}
