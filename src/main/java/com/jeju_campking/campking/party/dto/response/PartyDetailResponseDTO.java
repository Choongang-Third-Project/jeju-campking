package com.jeju_campking.campking.party.dto.response;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class PartyDetailResponseDTO {
    private Long partyNumber;
    private String partyTitle;
    private String partyContent;
    private String partyStartDate;
    private String partyEndDate;
    private String partySize;
    private Long memberNumber;
    private Long campNumber;
    private String memberNickname;
    private String profileImage;

}