package com.jeju_campking.campking.mypage.service;

import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.repository.MypageMapper;
import com.jeju_campking.campking.party.entity.Party;
import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class MypageService {

    private final MypageMapper mypageMapper;

    public MypageMemberResponseDTO findMember(Long memberNumber) {
        MypageMemberResponseDTO memberInfo = mypageMapper.findMemberInfo(memberNumber);
        log.info("MypageService.findMember : {}", memberInfo);
        return memberInfo;
    }

    public List<Party> findParty(Long memberNumber) {
        List<Party> party = mypageMapper.findParty(memberNumber);

        log.info("MypageService.findBoard : {}", memberNumber);
        log.info("party : {}", party);

        return party;
    }

    public List<PartyMessage> findSendMessage(Long memberNumber) {
        List<PartyMessage> sendMessageList = mypageMapper.findReceiveMessage(memberNumber);

        log.info("MypageService.findSendMessage : {}");
        return sendMessageList;
    }

    public List<PartyMessage> findReceiveMessage(Long memberNumber) {
        List<PartyMessage> sendMessageList = mypageMapper.findSendMessage(memberNumber);

        log.info("MypageService.findReceiveMessage : {}");
        return sendMessageList;
    }
}
