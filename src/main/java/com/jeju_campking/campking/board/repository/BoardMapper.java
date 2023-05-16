package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.board.dto.page.Page;
import com.jeju_campking.campking.board.dto.request.BoardModifyRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    // 글 쓰기
    boolean write(Board board);

    // 글 수정
    boolean modify(BoardModifyRequestDTO dto);

    // 글 삭제
    boolean delete(Long boardNumber);

    List<Board> findAll(Page page);

    List<Board> findByKeyword(String keyword);

    Board findOne(Long boardNumber);



    int count(String keyword); // 게시글 수
}