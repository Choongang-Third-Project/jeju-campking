package com.jeju_campking.campking.party.dto.response;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class PartyAllListResponseDTO {
    private Long partyNumber;
    private String campName;
    private String partyTitle;
    private String memberNickName;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate partyStartDate;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate partyEndDate;
    private Long partySize;
    private LocalDateTime partyWriteTime;
    private String campTypeNormal;
    private String campTypeCar;
    private String campTypeCaravan;
    private String campTypeGlamping;

}
