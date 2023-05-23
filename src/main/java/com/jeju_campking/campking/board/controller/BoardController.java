package com.jeju_campking.campking.board.controller;


import com.jeju_campking.campking.board.dto.page.Page;
import com.jeju_campking.campking.board.dto.request.BoardModifyRequestDTO;
import com.jeju_campking.campking.board.dto.request.BoardWriteRequestDTO;
import com.jeju_campking.campking.board.dto.response.BoardDetailResponseDTO;
import com.jeju_campking.campking.board.dto.response.BoardResponseDTO;
import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.board.service.BoardService;
import com.jeju_campking.campking.camp.entity.Camp;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.parameters.P;
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
    public ResponseEntity<?> findAll(int pageNo, int amount) {
        log.info("/boards : findAll() GET!!");
        Page page = Page.of(pageNo, amount);
//        log.info("{} {}", page.getPageNo(), page.getAmount());
        BoardResponseDTO list = boardService.findAll(page);
//        List<Board> list = boardService.findAll(page);
        log.info("list는 뭐야 {} " , list);
        return ResponseEntity.ok().body(list);
    }

    // 공지사항 게시물 합계
    @ResponseBody
    @GetMapping("/count")
    public ResponseEntity<?> count(String keyword) {
        int count = boardService.getCount(keyword);
        return ResponseEntity.ok().body(count);
    }


    //공지사항 찾기
    @GetMapping("/{keyword}/page/{pageNo}")
    @ResponseBody
    public ResponseEntity<?> findByKeyword(@PathVariable(required = false) String keyword, @PathVariable int pageNo) {
        log.info("/camps/address : GET!! {} ", keyword);

        // TODO : setter 대신 of 사용
        Page page = Page.of(pageNo, 10);

//        List<Board> byKeyword = null;
//        byKeyword = boardService.findByKeyword(keyword);

        BoardResponseDTO list = boardService.findByKeyword(keyword, page);

        return ResponseEntity.ok().body(list);
    }

    // /boards/detail?boardNumber=1  게시물 한개 조회
    @GetMapping("/details")
    public String findOne(long boardNumber, Model model) {
        log.info("/boards : findOne() GET!!");
        BoardDetailResponseDTO board = boardService.detail(boardNumber);
        model.addAttribute("board", board);
        model.addAttribute("p", boardService.prevBoard(boardNumber));
        model.addAttribute("n", boardService.nextBoard(boardNumber));
        return "/board/detail";
    }


    // 최근 게시물 2개를 담음
    // /jeju-camps/notices/top
    @GetMapping("/top")
    public ResponseEntity<?> findRecentTwo() {
        List<Board> list = boardService.findRecentTwo();
        return ResponseEntity.ok().body(list);
    }

    // 글 작성 페이지
    @GetMapping("/write")
    public String write() {
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
    public String modify(Long boardNumber, Model model) {
        log.info("/jeju-camps/notice : modify() GET!!");
        BoardDetailResponseDTO board = boardService.findOne(boardNumber);
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


    // 게시물 추천 상승 기능
    // http://localhost:8181/jeju-camps/notices/up/995
    @ResponseBody
    @PostMapping("/up/{boardNumber}")
    public ResponseEntity<?> recommendUp(@PathVariable Long boardNumber) {
        log.info("/up {}", boardNumber);
        // 현재 추천 게시물의 추천이 상승되면 비동기적으로 업데이트됨
        // 그 추천값을 select로 가지고 와서 ResponseEntity로 담아서 줌
        int recommend = boardService.recommendUp(boardNumber);
        return ResponseEntity.ok().body(recommend);
    }

    // http://localhost:8181/jeju-camps/notices/down/995
    // 게시물 추천 다운 기능
    @ResponseBody
    @PostMapping("/down/{boardNumber}")
    public ResponseEntity<?> recommendDown(@PathVariable Long boardNumber) {
        log.info("/up {}", boardNumber);
        // 현재 추천 게시물의 추천이 하강되면 비동기적으로 업데이트됨
        // 그 추천값을 select로 가지고 와서 ResponseEntity로 담아서 줌
        int recommend = boardService.recommendDown(boardNumber);
        return ResponseEntity.ok().body(recommend);
    }


}
