package com.jeju_campking.campking.shop.event.entity;

import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EventCategory {
    private String eventCategory;
    private String eventImg;

    private Long eventIdx;
}