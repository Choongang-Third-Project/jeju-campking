package com.jeju_campking.campking.board.dto.request;


import com.jeju_campking.campking.board.entity.Reply;
import lombok.*;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReplyModifyRequestDTO {

    @NotBlank(message = "수정할 내용을 입력해주세요")
    private String replyContent;


    @NotNull(message = "댓글 번호를 입력해주세요")
    @Min(value = 0, message = "댓글 번호를 입력해주세요")
    private Long replyNumber;

    public Reply toEntity() {
        return Reply.builder()
                .replyContent(this.replyContent)
                .replyNumber(replyNumber)
                .build();
    }

}
