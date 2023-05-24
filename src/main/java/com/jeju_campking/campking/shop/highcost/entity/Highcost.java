package com.jeju_campking.campking.shop.highcost.entity;

import lombok.*;

/**
 * 고가장비 entity
 */

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class Highcost {
    private Long highcostIdx;
    private String highcostName;
    private Long highcostPrice;
    private String highcostInfo;
    private String highcostCategory;
    private Long highcostWish;
}
