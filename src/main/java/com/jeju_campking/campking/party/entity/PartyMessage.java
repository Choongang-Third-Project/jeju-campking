package com.jeju_campking.campking.party.entity;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PartyMessage {
    private Long partyMessageNumber;
    private String partyMessageContent;
    private LocalDateTime partyMessageTime;


    private Long partyMessageSender;
    private Long partyMessageRecipient;
    private Long partyNumber;
}
