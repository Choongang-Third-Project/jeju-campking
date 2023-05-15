package com.jeju_campking.campking.party.repository;


import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PartyReplyMapper {
    // 전체 조회 정렬 기준은 댓글 시간(먼저 작성한 댓글이 위에)
    void findAll();
}
