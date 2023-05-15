package com.jeju_campking.campking.party.service;

import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import com.jeju_campking.campking.party.repository.PartyMapper;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PartyService {

    private final PartyMapper partyMapper;

    public List<PartyAllListResponseDTO> findAllBySort(String type, String sort) {
        return partyMapper.findAllBySort(type, sort);
    }
}
