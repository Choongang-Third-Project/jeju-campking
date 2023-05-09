package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.board.dto.request.BoardModifyRequestDTO;
import com.jeju_campking.campking.board.dto.request.BoardWriteRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BoardMapperTest {

    @Autowired
    BoardMapper boardMapper;


    @Test
    @DisplayName("게시물 등록에 성공할 것이다.")
    @Transactional
    @Rollback
    void writeTest() {
        // given
        Long memberNo = 1L;

        Board dto = BoardWriteRequestDTO.builder()
                .boardTitle("title")
                .boardContent("content")
                .memberNumber(memberNo)
                .build().toEntity();

        System.out.println("dto = " + dto);

        // when
        boolean isWrite = boardMapper.write(dto);

        // then
        assertTrue(isWrite);
    }

    @Test
    @DisplayName("modify")
    @Transactional
    @Rollback
    void modifyTest() {
        // given
        Long bno = 3L;
        BoardModifyRequestDTO dto = BoardModifyRequestDTO.builder()
                .boardTitle("테스트에서 수정한 제목이다")
                .boardContent("테스트에서 수정한 내용이다")
                .boardNumber(bno)
                .build();

        // when
        boolean isModify = boardMapper.modify(dto);

        // then
        assertTrue(isModify);
    }

    @Test
    @DisplayName("delete")
    @Transactional
    @Rollback
    void delete() {
        // given
        Long bno = 5L;

        // when
        boolean isDelete = boardMapper.delete(bno);

        // then
        assertTrue(isDelete);
    }


}