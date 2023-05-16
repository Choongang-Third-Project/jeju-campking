package com.jeju_campking.campking.mypage.service;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypagePartyResponseDTO;
import com.jeju_campking.campking.mypage.repository.MypageMapper;
import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

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

    public List<MypagePartyResponseDTO> findParty(Long memberNumber) {
        List<MypagePartyResponseDTO> partyList = mypageMapper.findParty(memberNumber)
                        .stream()
                        .map(party -> new MypagePartyResponseDTO(party))
                        .collect(Collectors.toList());

        log.info("MypageService.findBoard : {}", memberNumber);
        log.info("party : {}", partyList);

        return partyList;
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
