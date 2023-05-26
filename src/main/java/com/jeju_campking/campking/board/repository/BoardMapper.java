package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.board.dto.page.Page;
import com.jeju_campking.campking.board.dto.request.BoardModifyRequestDTO;
import com.jeju_campking.campking.board.dto.response.BoardDetailResponseDTO;
import com.jeju_campking.campking.board.entity.Board;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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

    List<Board> findByKeyword(@Param("k")String keyword, @Param("p") Page page);

    BoardDetailResponseDTO findOne(Long boardNumber);

    List<Board> findRecentTwo();

    boolean upViewCount(Long boardNumber); // 조회수 상승
    boolean upRecommendCount(Long boardNumber); // 추천수 상승
    boolean downRecommendCount(Long boardNumber); // 추천수 하강
    int recommendCount(Long boardNumber); // 현재 게시판의 추천 수
    int count(String keyword); // 게시글 수

    Board findPrev(Long boardNumber); // 이전글
    Board findNext(Long boardNumber); // 다음글


}