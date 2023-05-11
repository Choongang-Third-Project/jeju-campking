package com.jeju_campking.campking.board.dto.request;

import com.jeju_campking.campking.board.entity.Board;
import lombok.*;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Validated


public class BoardWriteRequestDTO {
    @NotBlank(message = "제목을 입력해주세요.")
    private String boardTitle;

    @NotBlank(message = "내용을 입력해주세요.")
    private String boardContent;

    private Long memberNumber;

    public Board toEntity() {
        return Board.builder()
                .boardTitle(this.boardTitle)
                .boardContent(this.boardContent)
                .memberNumber(this.memberNumber)
                .build();
    }
}
