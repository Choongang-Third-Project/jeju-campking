package com.jeju_campking.campking.board.controller;


import com.jeju_campking.campking.board.dto.request.BoardModifyRequestDTO;
import com.jeju_campking.campking.board.dto.request.BoardWriteRequestDTO;
import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.board.service.BoardService;
import com.jeju_campking.campking.camp.entity.Camp;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;
import java.sql.SQLException;
import java.util.List;

import static org.springframework.http.ResponseEntity.ok;

@Controller
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/notices")
@Slf4j
public class BoardController {
    private final BoardService boardService;


    // 공지사항 목록 조회 요청
    // URL : /boards
    @ResponseBody
    @GetMapping("/all")
    public ResponseEntity<?> findAll(){
        log.info("/boards : findAll() GET!!");
        List<Board> list = boardService.findAll();
        return ResponseEntity.ok().body(list);
    }


    //공지사항 찾기
    @GetMapping("/{keyword}")
    @ResponseBody
    public ResponseEntity<?> findByKeyword(@PathVariable(required = false) String keyword) {
        log.info("/camps/address : GET!! {} ", keyword);

        List<Board> byKeyword = null;
        byKeyword = boardService.findByKeyword(keyword);

        return ResponseEntity.ok().body(byKeyword);
    }

    // /boards/detail?boardNumber=1  게시물 한개 조회
    @GetMapping("/details")
    public String findOne(long boardNumber, Model model){
        log.info("/boards : findOne() GET!!");
        Board board = boardService.findOne(boardNumber);
        model.addAttribute("board", board);
        return "/board/detail";
    }

    // 글 작성 페이지
    @GetMapping("/write")
    public String write(){
        log.info("/boards/write : write() GET!!");
        return "board/write";
    }


    @PostMapping("/write")
    @ResponseBody
    public ResponseEntity<?> write(
            @Validated @RequestBody BoardWriteRequestDTO dto,
            BindingResult result
    ) {
        log.info("boardController.write.info : {}, {}", dto, result);

        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }

        try {
            Board board = boardService.write(dto.toEntity());
            return ResponseEntity.ok().body(board);
        } catch (SQLException e) {
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }

    @ResponseBody
    @DeleteMapping("/{boardNumber}")
    public ResponseEntity<?> delete(
            @PathVariable(required = false) Long boardNumber
    ) {
        log.info("boardController.delete.info : {}", boardNumber);

        if (boardNumber == null) return ResponseEntity.badRequest().body("게시글 번호가 없습니다.");

        try {
            if (!boardService.delete(boardNumber)) {
                return ResponseEntity
                        .badRequest()
                        .body("삭제할 게시글의 번호가 안 넘어옴");
            }

            return ResponseEntity
                    .ok()
                    .body(boardNumber);
        } catch (SQLException e) {
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }


    @GetMapping("/modify")
    public String modify(Long boardNumber, Model model){
        log.info("/jeju-camps/notice : modify() GET!!");
        Board board = boardService.findOne(boardNumber);
        model.addAttribute("board", board);
        return "/board/modify";
    }

    //    @PostMapping("/modify")
    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH})
    public ResponseEntity<?> modify(
            @Validated @RequestBody
            BoardModifyRequestDTO dto,
            BindingResult result
    ) {

        log.info("boardController.modify.info : {}", dto);

        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }

        try {
            if (!boardService.modify(dto)) {
                ResponseEntity
                        .badRequest()
                        .body("수정할 게시글의 정보가 부족합니다.");
            }

            return ResponseEntity
                    .ok()
                    .body(dto);
        } catch (SQLException e) {
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }

}
