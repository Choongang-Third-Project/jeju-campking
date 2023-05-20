package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.response.PartyDetailResponseDTO;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface PartyDetailMapper {

    PartyDetailResponseDTO detailView(Long partyNumber);

    void sendMessage();

}
