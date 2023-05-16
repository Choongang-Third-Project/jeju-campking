package com.jeju_campking.campking.party.dto.request;

import com.jeju_campking.campking.party.entity.Party;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PartySaveRequestDTO {
    private String partyTitle;
    private String partyContent;
    private LocalDateTime partyStartDate;
    private LocalDateTime partyEndDate;
    private Long partySize;

    private Long memberNumber;
    private Long campNumber;

    public Party toEntity() {
        return Party.builder()
                .partyTitle(this.partyTitle)
                .partyContent(this.partyContent)
                .partyStartDate(this.partyStartDate)
                .partyEndDate(this.partyEndDate)
                .partySize(this.partySize)
                .memberNumber(this.memberNumber)
                .campNumber(this.campNumber)
                .build();
    }

}
