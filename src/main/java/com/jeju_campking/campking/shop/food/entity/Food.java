package com.jeju_campking.campking.shop.food.entity;

import lombok.*;


@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class Food {
    private Long foodIdx;
    private String foodName;
    private Long foodPrice;
    private String foodInfo;
    private String foodCategory;
    private Long food_wish;
}
