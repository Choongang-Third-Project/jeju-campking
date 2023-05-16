package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.entity.PartyMessage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PartyMessageMapper {

    // 내가 받은 메시지를 모두 조회하는 기능
    // 받은 사람의 회원번호로 조회
    List<PartyMessage> findAll(Long memberId);

    // 내가 보낸 메시지를 모두 조회하는 기능
    // 보낸 사람의 회원번호로 조회
    List<PartyMessage> findAllReceive(Long memberId);

    // 메시지 보내기
    // 보내는 사람, 받는 사람, 내용, 쪽지 번호 등
    boolean send(PartyMessageRequestDTO dto);

    // 받은 메시지를 삭제하는 기능
    // 메시지 넘버로 삭제
    void delete();

}
