package com.jeju_campking.campking.party.repository;


import com.jeju_campking.campking.party.dto.request.PartyModifyRequestDTO;
import com.jeju_campking.campking.party.dto.request.PartySaveRequestDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@Transactional
@Rollback
public class PartyMapperTest2 {

    @Autowired
    PartyMapper partyMapper;

    @Test
    @DisplayName("글쓰기")
    void saveTest() {
        // given
        String partyTitle = "테스트 제목이빈다";
        String partyContent = "테스트 내용입니다";
        LocalDateTime partyStartDate = LocalDateTime.now();
        LocalDateTime partyEndDate = LocalDateTime.now();

        System.out.println(partyStartDate);
        System.out.println(partyEndDate);
        Long partySize = 4L;

        Long memberNumber = 11L;
        Long campNumber = 11L;

        PartySaveRequestDTO dto = PartySaveRequestDTO.builder()
                .partyTitle(partyTitle)
                .partyContent(partyContent)
                .partyStartDate(partyStartDate)
                .partyEndDate(partyEndDate)
                .partySize(partySize)
                .memberNumber(memberNumber)
                .campNumber(campNumber)
                .build();
        // when
        boolean isSave = partyMapper.save(dto);

        // then

        assertTrue(isSave);

    }

    @Test
    @DisplayName("글삭제")
    void deleteTest() {
        // given
        Long partyNumber = 3L;

        // when
        boolean isDelete = partyMapper.deleteByNumber(partyNumber);

        // then
        assertTrue(isDelete);
    }

    @Test
    @DisplayName("글수정")
    void modifyTest() {
        // given
        Long partyNumber = 5L;
        String partyTitle = "수정 테스트 제목입니다";
        String partyContent = "수정 테스트 내용입니다";
        LocalDateTime partyStartDate = LocalDateTime.now();
        LocalDateTime partyEndDate = LocalDateTime.now();

        System.out.println(partyStartDate);
        System.out.println(partyEndDate);
        Long partySize = 10L;

        Long campNumber = 40L;

        PartyModifyRequestDTO dto = PartyModifyRequestDTO.builder()
                .partyNumber(partyNumber)
                .partyTitle(partyTitle)
                .partyContent(partyContent)
                .partyStartDate(partyStartDate)
                .partyEndDate(partyEndDate)
                .partySize(partySize)
                .campNumber(campNumber)
                .build();

        // when
        boolean ifModify = partyMapper.modify(dto);

        // then
        assertTrue(ifModify);
    }

}
