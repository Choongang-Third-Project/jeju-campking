package com.jeju_campking.campking.shop.food.repository;

import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
import com.jeju_campking.campking.shop.food.entity.Food;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class FoodMapperTest {

    @Autowired
    FoodMapper mapper;

    @Test
    @DisplayName("쇼핑몰 Food 품목 중 모든 카테고리를 조회할 것이다")
    void findAll() {
        List<Food> all = mapper.findAll();
        for (Food foodResponseDTO : all) {
            System.out.println(foodResponseDTO);
        }
    }


//    @Test
//    @DisplayName("Dummy Data 넣어보기")
//    void dummy() {
//        //given
//        //when
//        //then
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("과일")
//                    .foodImg("/assets/shop/food/fruit.jpg")
//                    .foodPrice((long)(Math.random()*5000+5000))
//                    .foodInfo("맛있는 사과입니다.")
//                    .foodName("사과" + i)
//                    .build());
//        }
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("채소")
//                    .foodImg("/assets/shop/food/vegetable.jpg")
//                    .foodPrice((long)(Math.random()*5000+5000))
//                    .foodInfo("영양가 만점 양파에요." )
//                    .foodName("양파" + i)
//                    .build());
//        }
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("고기")
//                    .foodImg("/assets/shop/food/meat.jpg")
//                    .foodPrice((long)(Math.random()*15000+5000))
//                    .foodInfo("구워먹으면 맛있는 고기입니다.")
//                    .foodName("삼겹살" + i)
//                    .build());
//        }
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("해산물")
//                    .foodImg("/assets/shop/food/seafood.jpg")
//                    .foodPrice((long)(Math.random()*8000+5000))
//                    .foodInfo("쫄깃한 대하새우입니다.")
//                    .foodName("새우" + i)
//                    .build());
//        }
//    }

}