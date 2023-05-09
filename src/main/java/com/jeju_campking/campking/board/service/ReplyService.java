package com.jeju_campking.campking.board.service;


import com.jeju_campking.campking.board.dto.request.ReplyModifyRequestDTO;
import com.jeju_campking.campking.board.dto.request.ReplyWriteRequestDTO;
import com.jeju_campking.campking.board.entity.Reply;
import com.jeju_campking.campking.board.repository.ReplyMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.sql.SQLException;

@Service
@RequiredArgsConstructor
@Validated
@Slf4j
public class ReplyService {

    private final ReplyMapper replyMapper;


    public Reply write(ReplyWriteRequestDTO dto) throws SQLException {
        log.info("replyService.write.info : {}", dto);

        if (!replyMapper.write(dto)) {
            log.warn("replyService.write.warn : {}", dto);
            throw new SQLException("댓글 작성 실패");
        }

        return dto.toEntity();
    }

    public Reply modify(ReplyModifyRequestDTO dto) throws SQLException {
        log.info("replyService.modify.info : {}", dto);

        if (!replyMapper.modify(dto)) {
            log.warn("replyService.modify.warn : {}", dto);
            throw new SQLException("댓글 수정 실패");
        }

        return dto.toEntity();
    }

    public boolean delete(Long replyNumber) throws SQLException {
        log.info("replyService.delete.info : {}", replyNumber);

        if (!replyMapper.delete(replyNumber)) {
            log.warn("replyService.delete.warn : {}", replyNumber);
            throw new SQLException("댓글 삭제 실패");
        }

        return true;
    }

}
