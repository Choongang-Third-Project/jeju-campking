package com.jeju_campking.campking.shop.highcost.entity;

import lombok.*;

/**
 * 고가장비 찜 entity
 */

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class highcostWish {
    private Long highcostWish;
    private Long highcostIdx;
    private Long memberNumber;
}
