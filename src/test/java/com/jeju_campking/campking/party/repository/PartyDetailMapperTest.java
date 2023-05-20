package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.response.PartyDetailResponseDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest
class PartyDetailMapperTest {

    @Autowired
    PartyDetailMapper partyDetailMapper;


    @Test
    @DisplayName("test")
    void detailTest() {
        Long partyNumber = 3L;

        PartyDetailResponseDTO partyDetailResponseDTO = partyDetailMapper.detailView(partyNumber);
        System.out.println("partyDetailResponseDTO = " + partyDetailResponseDTO);

    }

}