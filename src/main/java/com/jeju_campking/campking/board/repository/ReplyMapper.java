package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.board.dto.request.ReplyModifyRequestDTO;
import com.jeju_campking.campking.board.dto.request.ReplyWriteRequestDTO;
import com.jeju_campking.campking.board.dto.response.ReplyResponseDTO;
import com.jeju_campking.campking.board.entity.Reply;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReplyMapper {

    // 댓글 전체 조회
    List<ReplyResponseDTO> findAll(Long boardNumber);

    // 댓글 쓰기
    boolean write(ReplyWriteRequestDTO dto);

    // 댓글 수정
    boolean modify(ReplyModifyRequestDTO dto);

    // 댓글 삭제
    boolean delete(Long replyNumber);

}
