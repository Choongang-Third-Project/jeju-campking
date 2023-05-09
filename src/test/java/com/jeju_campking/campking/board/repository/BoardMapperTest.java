package com.jeju_campking.campking.board.repository;

import com.jeju_campking.campking.board.dto.request.BoardWriteRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BoardMapperTest {

    @Autowired
    BoardMapper boardMapper;


    @Test
    @DisplayName("게시물 등록에 성공할 것이다.")
    void writeTest() {
        // given
        Long memberNo = 5L;

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
    @DisplayName("find all")
    void findAll(){


    }

}