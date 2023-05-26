package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
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
    @DisplayName("detail View Test")
    void detailViewTest() {
        Long partyNumber = 27L;
        PartyDetailResponseDTO partyDetailResponseDTO = partyDetailMapper.detailView(partyNumber);
        System.out.println("partyDetailResponseDTO = " + partyDetailResponseDTO);
    }

    @Test
    @DisplayName("next")
    void sendMessageTest() {
        // given
        String message = "응";
        Long sender = 3L;
        Long recipient = 5L;
        Long partyNumber = 1L;

        // when
        int sendResult = partyDetailMapper.sendMessage(
                PartyMessageRequestDTO.builder()
                        .partyNumber(partyNumber)
                        .partyMessageSender(sender)
                        .partyMessageRecipient(recipient)
                        .partyMessageContent(message)
                        .build()

        );

        // then
        System.out.println(sendResult);
    }

}