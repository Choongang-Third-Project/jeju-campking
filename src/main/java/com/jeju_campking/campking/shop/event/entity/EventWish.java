package com.jeju_campking.campking.shop.event.entity;

import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EventWish {
    private Long eventWish;

    private Long eventIdx;
    private Long memberNumber;
}
