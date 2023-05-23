package com.jeju_campking.campking.mypage.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDateTime;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypagePartyMessageResponseDTO {

    private Long partyMessageNumber;
    private String partyMessageContent;
    @JsonFormat(pattern = "yyyy년 MM월 dd일  HH:mm:ss")
    private LocalDateTime partyMessageTime;
    private Long partyNumber;
    private String memberNickname;
}
