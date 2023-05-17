package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.mypage.dto.response.MypagePartyMessageResponseDTO;
import com.jeju_campking.campking.party.entity.Party;
import com.jeju_campking.campking.party.entity.PartyMessage;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MypageMapperTest {

    @Autowired
    MypageMapper mypageMapper;


    @Test
    @DisplayName("회원번호가 14인 회원이 받은 쪽지의 개수는 22개여야 한다.")
    void findPartyTest() {
        // given
        Long memberNumber = 14L;
        // when
        List<MypagePartyMessageResponseDTO> receiveMessage = mypageMapper.findReceiveMessage(memberNumber);
        // then
        assertEquals(22, receiveMessage.size());
    }

    @Test
    @DisplayName("회원번호가 14인 회원이 보낸 쪽지의 개수는 28개여야 한다.")
    void sendTest() {
        // given
        Long memberNumber = 14L;
        // when
        List<MypagePartyMessageResponseDTO> sendMessage = mypageMapper.findSendMessage(memberNumber);
        // then
        assertEquals(22, sendMessage.size());
    }

    @Test
    @DisplayName("회원번호가 10인 회원이 작성한 파티 게시글의 개수는 17개여야 한다.")
    void partyTest() {
        // given
        Long memberNumber = 10L;
        // when
        List<Party> partyList = mypageMapper.findParty(memberNumber);
        // then
        assertEquals(17, partyList.size());
    }

}