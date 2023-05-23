package com.jeju_campking.campking.shop.food.dto.response;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class FoodResponseDTO {
    private Long foodIdx;
    private String foodName;
    private Long foodPrice;
    private String foodInfo;
    private String foodCategory;
    private Long foodWish;
    private String foodImg;
    private Long memberNumber;
}
