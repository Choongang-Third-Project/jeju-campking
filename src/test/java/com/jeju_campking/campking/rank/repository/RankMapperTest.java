package com.jeju_campking.campking.rank.repository;

import com.jeju_campking.campking.rank.dto.response.CampRankResponseDTO;
import com.jeju_campking.campking.rank.dto.response.PartyListResponseDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class RankMapperTest {
    @Autowired
    RankMapper rankMapper;

    @Test
    @DisplayName("파티 모집 게시판에서 가장 많이 선택된 캠프장 10개의 조회에 성공할 것이다.")
    void campRankListTest() {

        List<CampRankResponseDTO> campRankList = rankMapper.getCampRankList();
        for (CampRankResponseDTO campRankResponseDTO : campRankList) {
            System.out.println("campRankResponseDTO = " + campRankResponseDTO);
        }
    }

    @Test
    @DisplayName("가장 빠른 여행을 갈 수 있는 파티 게시판 10개가 조회될 것이다.")
    void partyListTest() {
        List<PartyListResponseDTO> partyList = rankMapper.getPartyList();
        for (PartyListResponseDTO partyListResponseDTO : partyList) {
            System.out.println(partyListResponseDTO);
        }

    }
}