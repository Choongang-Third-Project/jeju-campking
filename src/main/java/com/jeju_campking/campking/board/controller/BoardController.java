package com.jeju_campking.campking.board.controller;


import com.jeju_campking.campking.board.dto.request.BoardWriteRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/boards")
@Slf4j
public class BoardController {
    private final BoardService boardService;

    @PostMapping()
    public ResponseEntity<?> write(
            @Validated @RequestBody BoardWriteRequestDTO dto,
            BindingResult result
    ) {
//
//        if (result.hasErrors()) {
//            return ResponseEntity
//                    .badRequest()
//                    .body(result.toString());
//        }
//
//        log.info("경로...... : POST ! {}", dto);
//
//        Board board = dto.toEntity();
//        ResponseEntity.ok().body(board);
        return null;
    }

    @PostMapping()
    public ResponseEntity<?> delete() {


        return null;
    }

    @PostMapping()
    public ResponseEntity<?> modify() {


        return null;
    }

}
