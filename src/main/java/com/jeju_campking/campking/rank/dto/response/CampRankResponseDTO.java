package com.jeju_campking.campking.rank.dto.response;

import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CampRankResponseDTO {
    private Long campNumber;
    private String campName;
}