package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.board.dto.request.BoardWriteRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    // 전체 조회
    List<Board> findAll();

    // 글 쓰기

    boolean write(Board dto);
    // 글 삭제

    boolean delete(Member member);
    // 글 수정

    boolean modify(Member member);
}
