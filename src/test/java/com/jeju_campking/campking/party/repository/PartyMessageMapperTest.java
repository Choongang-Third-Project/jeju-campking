package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.entity.PartyMessage;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.convert.DataSizeUnit;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class PartyMessageMapperTest {

    @Autowired
    PartyMessageMapper partyMessageMapper;

    @Test
    @DisplayName("메시지를 받은 유저의 번호를 기준으로 받은 메시지 전체 조회에 성공할 것이다.")
    void findAllTest() {
        // given
        Long recipientMember = 4L;

        // when
        List<PartyMessage> all = partyMessageMapper.findAll(recipientMember);
        for (PartyMessage partyMessage : all) {
            System.out.println("partyMessage = " + partyMessage);
            System.out.println();
        }

        // then
    }

    @Test
    @DisplayName("메시지 보내기에 성공할 것이다.")
    void sendTest() {
        // given
        String content = "회 같이 먹으실래요?";
        Long sendMemberNumber = 11L;
        Long recipientMemberNumber = 13L;
        Long partyNumber = 1L;

        // when

        boolean isSend = partyMessageMapper.send(PartyMessageRequestDTO.builder()
                .partyMessageContent(content)
                .partyMessageSender(sendMemberNumber)
                .partyMessageRecipient(recipientMemberNumber)
                .partyNumber(partyNumber)
                .build());

        // then
        assertThat(isSend).isEqualTo(true);
    }

}