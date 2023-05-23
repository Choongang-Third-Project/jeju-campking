package com.jeju_campking.campking.rank.service;


import com.jeju_campking.campking.rank.dto.response.CampRankResponseDTO;
import com.jeju_campking.campking.rank.dto.response.PartyListResponseDTO;
import com.jeju_campking.campking.rank.repository.RankMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RankService {
    private final RankMapper rankMapper;

    public List<CampRankResponseDTO> getCampRankList() {
        return rankMapper.getCampRankList();
    }

    public List<PartyListResponseDTO> getPartyList() {
        return rankMapper.getPartyList();
    }
}
