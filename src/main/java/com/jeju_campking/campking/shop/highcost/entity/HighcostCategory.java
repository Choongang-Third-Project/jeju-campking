package com.jeju_campking.campking.shop.highcost.entity;

import lombok.*;

/**
 * 고가장비 카테고리 entity
 */

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class HighcostCategory {
    private String highcostCategory;
    private String highcostImg;
    private Long highcostIdx;
}
