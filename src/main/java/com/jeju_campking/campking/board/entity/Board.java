package com.jeju_campking.campking.board.entity;

import lombok.*;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotBlank;
import java.time.LocalDateTime;


@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Board {
    private Long boardNumber;
    private String boardTitle;
    private String boardContent;
    private LocalDateTime boardTime;
    private Long memberNumber;
    private Integer boardView;
    private Integer boardRecommend;
}