package com.jeju_campking.campking.party.dto.response;


import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class PartyAllListResponseDTO {
    private String campName;
    private String partyTitle;
    private String memberNickName;
    private LocalDateTime partyStartDate;
    private LocalDateTime partyEndDate;
    private Long partySize;
    private LocalDateTime partyWriteTime;
    private String campTypeNormal;
    private String campTypeCar;
    private String campTypeCaravan;
    private String campTypeGlamping;

}
