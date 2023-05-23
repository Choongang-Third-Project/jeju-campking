package com.jeju_campking.campking.board.dto.response;

import com.jeju_campking.campking.board.dto.page.PageMaker;
import com.jeju_campking.campking.board.entity.Board;
import lombok.*;

import java.util.List;

@Setter @Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardResponseDTO {
    private int count; // 총 댓글 수
    private PageMaker pageInfo; // 페이지 정보
    private List<Board> list; // 게시판 리스트
}
