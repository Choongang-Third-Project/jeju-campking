package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.party.entity.PartyMessage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MypageMapper {

    MypageMemberResponseDTO findMemberInfo(Long memberNumber);
    List<Board> findBoard(Long memberNumber);
    List<PartyMessage> findSendMessage(Long memberNumber);
    List<PartyMessage> findReceiveMessage(Long memberNumber);
}
