package com.jeju_campking.campking.shop.food.entity;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class FoodWish {
    private Long foodWish;
    private Long foodIdx;
    private Long memberNumber;
}
