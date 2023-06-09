package com.jeju_campking.campking.board.controller;


import com.jeju_campking.campking.board.dto.request.ReplyModifyRequestDTO;
import com.jeju_campking.campking.board.dto.request.ReplyWriteRequestDTO;
import com.jeju_campking.campking.board.dto.response.ReplyResponseDTO;
import com.jeju_campking.campking.board.entity.Reply;
import com.jeju_campking.campking.board.service.ReplyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.NotNull;
import java.sql.SQLException;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/notices/detail/reply")
@Slf4j
public class ReplyController {

    private final ReplyService replyService;

    //http://localhost:8181/jeju-camps/notices/detail/reply/995
    // 게시판 번호를 주면 댓글 목록들을 반환
    @GetMapping("/{boardNumber}")
    public ResponseEntity<?> findAll(
            @PathVariable Long boardNumber
    ){

        List<ReplyResponseDTO> list = replyService.findAll(boardNumber);
        return ResponseEntity.ok().body(list);
    }

    @PostMapping("/write")
    public ResponseEntity<?> write(
            @Validated @RequestBody ReplyWriteRequestDTO dto,
            BindingResult result
    ) {
        log.info("replyController.write.info : {}", dto);

        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }

        try {
            Reply reply = replyService.write(dto);
            return ResponseEntity
                    .ok()
                    .body(reply);

        } catch (SQLException e) {
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }

    @DeleteMapping("/{replyNumber}")
    public ResponseEntity<?> delete(
            @PathVariable(required = false) Long replyNumber
    ) {
        log.info("replyController.delete.info : {}", replyNumber);

        if (replyNumber == null) return ResponseEntity.badRequest().body("댓글 번호가 없습니다.");

        try {
            if (!replyService.delete(replyNumber)) {
                return ResponseEntity
                        .badRequest()
                        .body("삭제할 댓글 번호가 없습니다.");
            }

            return ResponseEntity
                    .ok()
                    .body(replyNumber);

        } catch (SQLException e) {
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }

    }

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH})
    public ResponseEntity<?> modify(
            @Validated @RequestBody ReplyModifyRequestDTO dto,
            BindingResult result
    ) {
        log.info("replyController.modify.info : {}, {}", dto, result);

        if (result.hasErrors()) {
            return ResponseEntity.badRequest().body(result.toString());
        }

        try {
            Reply reply = replyService.modify(dto);
            return ResponseEntity
                    .ok()
                    .body(reply);
        } catch (SQLException e) {
            return ResponseEntity.internalServerError().body(e.getMessage());
        }

    }

}
