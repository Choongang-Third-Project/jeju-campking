package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypagePartyMessageResponseDTO;
import com.jeju_campking.campking.party.entity.Party;
import com.jeju_campking.campking.party.entity.PartyMessage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MypageMapper {

    MypageMemberResponseDTO findMember(Long memberNumber); // 홈 화면에 뿌려줄 데이터

    //    List<Board> findBoard(Long memberNumber);
    List<Party> findParty(Long memberNumber); // 내가 작성한 파티글 보기

    List<MypagePartyMessageResponseDTO> findSendMessage(Long memberNumber); // 내가 보낸 메시지 보기

    List<MypagePartyMessageResponseDTO> findReceiveMessage(Long memberNumber); // 내가 받은 메시지 보기
}
