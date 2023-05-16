package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.party.entity.Party;
import com.jeju_campking.campking.party.entity.PartyMessage;
import com.sun.source.tree.BinaryTree;
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
    @DisplayName("내가 쓴 글 조회")
    void findPartyTest() {
        // given
        Long memberNumber = 14L;
        // when
        List<Party> party = mypageMapper.findParty(memberNumber);

        for (Party party1 : party) {
            System.out.println(party1);
        }
        // then

    }

    @Test
    @DisplayName("내가 보낸 쪽지")
    void sendTest() {
        // given
        Long memberNumber = 14L;
        // when

        List<PartyMessage> sendMessage = mypageMapper.findSendMessage(memberNumber);

        for (PartyMessage partyMessage : sendMessage) {

            System.out.println(partyMessage);
        }
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
        mypageMapper.findReceiveMessage(memberNumber).forEach(System.out::println);


        // then

    }


}