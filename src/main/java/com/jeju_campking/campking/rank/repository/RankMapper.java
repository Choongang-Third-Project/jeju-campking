package com.jeju_campking.campking.rank.repository;

import com.jeju_campking.campking.rank.dto.response.CampRankResponseDTO;
import com.jeju_campking.campking.rank.dto.response.PartyListResponseDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RankMapper {

    List<CampRankResponseDTO> getCampRankList();

    List<PartyListResponseDTO> getPartyList();
}
