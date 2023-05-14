package com.jeju_campking.campking.party.repository;

public interface PartyMessageMapper {

    // 메시지 보내기
    // 보내는 사람, 받는 사람, 내용, 쪽지 번호 등
    void send();

    // 내가 받은 메시지를 모두 조회하는 기능
    // 받은 사람의 아이디로 조회
    void read();

    // 받은 메시지를 삭제하는 기능
    // 메시지 넘버로 삭제
    void delete();
}
