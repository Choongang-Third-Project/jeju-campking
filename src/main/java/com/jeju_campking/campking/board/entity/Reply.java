package com.jeju_campking.campking.board.entity;


import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reply {
    private Long replyNumber;
    private String replyContent;
    private LocalDateTime replyTime;

    private Long boardNumber;
    private Long memberNumber;
}