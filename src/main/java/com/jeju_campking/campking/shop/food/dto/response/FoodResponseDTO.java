package com.jeju_campking.campking.shop.food.dto.response;

import com.jeju_campking.campking.shop.food.entity.Food;
import lombok.*;

import java.text.NumberFormat;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class FoodResponseDTO {
    private String foodName;
    private String foodPrice;
    private String foodInfo;
    private String foodCategory;
    private String foodImg;
    
    public static FoodResponseDTO convertFood(Food food){
        NumberFormat formatter = NumberFormat.getNumberInstance();
        return FoodResponseDTO.builder()
                .foodName(food.getFoodName())
                .foodPrice(formatter.format(food.getFoodPrice()))
                .foodInfo(food.getFoodInfo())
                .foodCategory(food.getFoodCategory())
                .foodImg(food.getFoodImg())
                .build();
    }
    
    
}
