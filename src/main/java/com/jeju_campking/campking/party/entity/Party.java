package com.jeju_campking.campking.party.entity;

import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Party {
    private Long partyNumber;
    private String partyTitle;
    private String partyContent;
    private LocalDate partyStartDate;
    private LocalDate partyEndDate;
    private Long partySize;
    private LocalDateTime partyWriteTime;

    private Long memberNumber;
    private Long campNumber;
}
