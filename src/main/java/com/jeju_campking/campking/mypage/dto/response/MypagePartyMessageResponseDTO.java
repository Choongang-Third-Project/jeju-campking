package com.jeju_campking.campking.mypage.dto.response;

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
    private LocalDateTime partyMessageTime;
    private Long partyNumber;
    private String memberNickname;
}
