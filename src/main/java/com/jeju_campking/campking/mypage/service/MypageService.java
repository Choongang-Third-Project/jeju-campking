package com.jeju_campking.campking.mypage.service;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypagePartyResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypagePartyMessageResponseDTO;
import com.jeju_campking.campking.mypage.repository.MypageMapper;
import com.jeju_campking.campking.party.entity.Party;
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
        MypageMemberResponseDTO memberInfo = mypageMapper.findMember(memberNumber);
        log.info("MypageService findMember : {}", memberInfo);
        return memberInfo;
    }

    public List<MypagePartyResponseDTO> findParty(Long memberNumber) {
        List<MypagePartyResponseDTO> partyList = mypageMapper.findParty(memberNumber)
                        .stream()
                        .map(party -> new MypagePartyResponseDTO(party))
                        .collect(Collectors.toList());

        log.info("MypageService findBoard : {}", memberNumber);
        log.info("party : {}", partyList);

        return partyList;
    }

    public List<MypagePartyMessageResponseDTO> findSendMessage(Long memberNumber) {
        List<MypagePartyMessageResponseDTO> sendMessageList = mypageMapper.findSendMessage(memberNumber);

        log.info("MypageService findSendMessage : {}");
        return sendMessageList;
    }

    public List<MypagePartyMessageResponseDTO> findReceiveMessage(Long memberNumber) {
        List<MypagePartyMessageResponseDTO> receiveMessageList = mypageMapper.findReceiveMessage(memberNumber);

        log.info("MypageService findReceiveMessage : {}");
        return receiveMessageList;
    }

    public boolean removeParty(Long partyNumber) {
        log.info("MypageService.removeParty : {}", partyNumber);
        boolean isDelete = mypageMapper.removeParty(partyNumber);

        if (!isDelete) {
            log.warn("MypageService removeParty WARN : {}", partyNumber);
            return false;
        }

        return true;
    }

    public boolean removeSendMessage(Long sendMessageNumber) {
        log.info("MypageService.removeSendMessage : {}", sendMessageNumber);
        boolean isDelete = mypageMapper.removeSendMessage(sendMessageNumber);

        if (!isDelete) {
            log.warn("MypageService removeSendMessage WARN : {}", sendMessageNumber);
            return false;
        }

        return true;
    }
}
