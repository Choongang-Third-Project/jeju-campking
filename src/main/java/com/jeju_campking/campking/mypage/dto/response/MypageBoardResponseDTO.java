package com.jeju_campking.campking.mypage.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypageBoardResponseDTO {
    private Long boardNumber;
    private String boardTitle;

    private LocalDateTime boardTime;
}
