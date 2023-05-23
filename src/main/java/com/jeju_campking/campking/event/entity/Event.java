package com.jeju_campking.campking.event.entity;

import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Event {
    private Long eventIdx;
    private String eventName;
    private Long eventPrice;
    private String eventInfo;

    private String eventCategory;
    private Long eventWish;

}
