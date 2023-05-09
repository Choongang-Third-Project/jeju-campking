package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

    // 글 쓰기
    boolean write(Member member);

    // 글 삭제
    boolean delete(Member member);

    // 글 수정
    boolean modify(Member member);
}
