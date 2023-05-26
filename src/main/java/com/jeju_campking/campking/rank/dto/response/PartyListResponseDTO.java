package com.jeju_campking.campking.rank.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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

    private LocalDate partyStartDate;

    public String getFormattedPartyStartDate() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM-dd");
        return partyStartDate.format(formatter);
    }
}