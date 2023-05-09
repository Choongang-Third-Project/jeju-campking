package com.jeju_campking.campking.board.dto.request;

import com.jeju_campking.campking.board.entity.Board;
import lombok.*;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Validated
public class BoardModifyRequestDTO {
    @NotBlank(message = "수정할 제목을 입력하세요.")
    private String boardTitle;
    @NotBlank(message = "수정할 내용을 입력해주세요.")
    private String boardContent;

    @NotNull(message = "원본 글 번호를 입력하세요")
    @PositiveOrZero(message = "원본 글 번호는 0이상의 양수만 가능")
    private Long boardNumber;

    public Board toEntity() {
        return Board.builder()
                .boardTitle(this.boardTitle)
                .boardContent(this.boardContent)
                .boardNumber(this.boardNumber)
                .build();
    }

}
