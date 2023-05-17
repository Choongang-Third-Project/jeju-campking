package com.jeju_campking.campking.board.dto.response;

import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
@Builder
public class ReplyResponseDTO {
    private Long replyNumber;
    private String replyContent;
    private LocalDateTime replyTime;
    private Long boardNumber;
    private Long memberNumber;
    private String memberNickname;
}
