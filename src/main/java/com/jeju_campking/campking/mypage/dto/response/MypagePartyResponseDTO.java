package com.jeju_campking.campking.mypage.dto.response;

import com.jeju_campking.campking.party.entity.Party;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypagePartyResponseDTO {
    private Long partyNumber;
    private String partyTitle;
    private LocalDateTime partyWriteTime;

    // entity 를 DTO 로 변환하는 생성자
    public MypagePartyResponseDTO(Party party) {
        this.partyNumber = party.getPartyNumber();
        this.partyTitle = party.getPartyTitle();
        this.partyWriteTime = party.getPartyWriteTime();
    }
}
