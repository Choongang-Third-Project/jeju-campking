package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
class PartyMapperTest {

    @Autowired
    private PartyMapper partyMapper;

    @Test
    @DisplayName("여행 시작 시간 오름차순으로 전체 조회를 했을 때, 12개의 목록이 나올 것이며 다섯 번째 글의 제목은 '회 같이 먹으실분' 일 것이다.")
    void findAllByStartASCTest() {
        // given
        String type = "all";
        String sort = "startASC";

        // when
        List<PartyAllListResponseDTO> startTimeASC = partyMapper.findAllBySort(type, sort);

        // then
        assertThat(startTimeASC.size()).isEqualTo(12);
        assertThat(startTimeASC.get(4).getPartyTitle()).isEqualTo("회 같이 먹으실분");
    }

    @Test
    @DisplayName("여행 시작 시간 내림차순으로 전체 조회를 했을 때, 12개의 목록이 나올 것이며 여섯 번째 글의 제목은 '낚시하러 가실분?' 일 것이다.")
    void findAllByStartDESCTest() {
        // given
        String type = "all";
        String sort = "startDESC";

        // when
        List<PartyAllListResponseDTO> startTimeDESC = partyMapper.findAllBySort(type, sort);

        // then
        assertThat(startTimeDESC.size()).isEqualTo(12);
        assertThat(startTimeDESC.get(5).getPartyTitle()).isEqualTo("낚시하러 가실분?");
    }

    @Test
    @DisplayName("여행 종료 시간 내림차순으로 전체 조회를 했을 때, 12개의 목록이 나올 것이며 세 번째 글의 캠핑장 이름은 '중문진실캠핑장' 일 것이다.")
    void findAllByEndASCTest() {
        // given
        String type = "all";
        String sort = "endASC";

        // when
        List<PartyAllListResponseDTO> endTimeASC = partyMapper.findAllBySort(type, sort);

        // then
        assertThat(endTimeASC.size()).isEqualTo(12);
        assertThat(endTimeASC.get(0).getCampName()).isEqualTo("중문진실캠핑장");
    }

    @Test
    @DisplayName("여행 종료 시간 내림차순으로 전체 조회를 했을 때, 12개의 목록이 나올 것이며 세 번째 글의 캠핑장 이름은 '국제문화스포츠교육원 제주힐링캠프' 일 것이다.")
    void findAllByEndDESCTest() {
        // given
        String type = "all";
        String sort = "endDESC";

        // when
        List<PartyAllListResponseDTO> endTimeASC = partyMapper.findAllBySort(type, sort);

        // then
        assertThat(endTimeASC.size()).isEqualTo(12);
        assertThat(endTimeASC.get(0).getCampName()).isEqualTo("국제문화스포츠교육원 제주힐링캠프");
    }

    @Test
    @DisplayName("여행 모집 글 작성 시간 오름차순으로 전체 조회를 했을 때, 12개의 목록이 나올 것이며 두 번째 글의 작성자 닉네임은 'ddss' 일 것이다.")
    void findAllByWriteTimeASCTest() {
        // given
        String type = "all";
        String sort = "writeTimeASC";

        // when
        List<PartyAllListResponseDTO> writeTimeASC = partyMapper.findAllBySort(type, sort);

        // then
        assertThat(writeTimeASC.size()).isEqualTo(12);
        assertThat(writeTimeASC.get(1).getMemberNickName()).isEqualTo("ddss");
    }

    @Test
    @DisplayName("여행 모집 글 작성 시간 내림차순으로 전체 조회를 했을 때, 12개의 목록이 나올 것이며 첫 번째 글의 작성자 닉네임은 '앙' 일 것이다.")
    void findAllByWriteTimeDESCTest() {
        // given
        String type = "all";
        String sort = "writeTimeASC";

        // when
        List<PartyAllListResponseDTO> writeTimeASC = partyMapper.findAllBySort(type, sort);

        // then
        assertThat(writeTimeASC.size()).isEqualTo(12);
        assertThat(writeTimeASC.get(0).getMemberNickName()).isEqualTo("앙뇽");
    }


}