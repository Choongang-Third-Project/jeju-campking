package com.jeju_campking.campking.board.dto.request;


import com.jeju_campking.campking.board.entity.Reply;
import lombok.*;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReplyWriteRequestDTO {
    @NotBlank(message = "댓글 내용을 입력해주세요")
    private String replyContent;

    @NotNull(message = "게시물의 번호를 입력해주세요")
    @Min(value = 0, message = "게시물의 번호를 입력해주세요")
    private Long boardNumber;

    @NotNull(message = "게시물의 번호를 입력해주세요")
    @Min(value = 0, message = "게시물의 번호를 입력해주세요")
    private Long memberNumber;

    public Reply toEntity() {
        return Reply.builder()
                .replyContent(this.replyContent)
                .boardNumber(this.boardNumber)
                .memberNumber(this.memberNumber)
                .build();
    }
}
