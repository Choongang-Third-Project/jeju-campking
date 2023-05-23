package com.jeju_campking.campking.rank.dto.response;

import lombok.*;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PartyListResponseDTO {
    private Long partyNumber;
    private String partyTitle;
}