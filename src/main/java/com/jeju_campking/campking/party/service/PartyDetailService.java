package com.jeju_campking.campking.party.service;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.dto.response.PartyDetailResponseDTO;
import com.jeju_campking.campking.party.repository.PartyDetailMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class PartyDetailService {
    private final PartyDetailMapper partyDetailMapper;

    public PartyDetailResponseDTO detailView(Long partyNumber) {
        return partyDetailMapper.detailView(partyNumber);
    }

    public int send(PartyMessageRequestDTO dto) {

        return partyDetailMapper.sendMessage(dto);
    }

}
