package com.jeju_campking.campking.board.service;


import com.jeju_campking.campking.board.dto.request.BoardModifyRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.board.repository.BoardMapper;
import com.jeju_campking.campking.member.entity.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
@RequiredArgsConstructor
@Slf4j
public class BoardService {
    private final BoardMapper boardMapper;

    public Board write(final Board board) throws SQLException {
        log.info("boardService.write.info : {}", board);

        if (!boardMapper.write(board)) {
            log.warn("boardService.write.warn : {}", board);
            throw new SQLException("글 작성 실패");
        }

        return board;
    }

    public boolean modify(BoardModifyRequestDTO dto) throws SQLException {
        log.info("boardService.modify.info : {}", dto);

        if (!boardMapper.modify(dto)) {
            log.warn("boardService.modify.warn : {}", dto);
            throw new SQLException("글 수정 실패");
        }

        return true;
    }

    public boolean delete(Long boardNumber) throws SQLException {
        log.info("boardService.delete.info : {}", boardNumber);

        if (!boardMapper.delete(boardNumber)) {
            log.warn("boardService.delete.warn : {}", boardNumber);
            throw new SQLException("글 삭제 실패");
        }

        return true;
    }
}
