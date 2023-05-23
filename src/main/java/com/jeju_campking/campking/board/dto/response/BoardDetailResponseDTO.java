package com.jeju_campking.campking.board.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardDetailResponseDTO {
    private Long boardNumber;
    private String boardTitle;
    private String boardContent;
    @JsonFormat(pattern = "yy-MM-dd")
    private LocalDateTime boardTime;
    private Integer boardView;
    private Integer boardRecommend;
    private Long memberNumber;
    private String memberNickname;

}
