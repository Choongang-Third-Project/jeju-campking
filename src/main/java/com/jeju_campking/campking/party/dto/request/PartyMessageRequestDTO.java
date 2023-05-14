package com.jeju_campking.campking.party.dto.request;

import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class PartyMessageRequestDTO {
    private String partyMessageContent;
    private Long partyMessageSender;
    private Long partyMessageRecipient;
    private Long partyNumber;

    public PartyMessage toEntity() {
        return PartyMessage.builder()
                .partyMessageContent(this.partyMessageContent)
                .partyMessageSender(this.partyMessageSender)
                .partyMessageRecipient(this.partyMessageRecipient)
                .partyNumber(this.partyNumber)
                .build();
    }
}
