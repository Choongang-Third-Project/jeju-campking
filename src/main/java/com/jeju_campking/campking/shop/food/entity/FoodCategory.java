package com.jeju_campking.campking.shop.food.entity;


import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class FoodCategory {
    private String foodCategory;
    private String foodImg;
    private Long foodIdx;
}
