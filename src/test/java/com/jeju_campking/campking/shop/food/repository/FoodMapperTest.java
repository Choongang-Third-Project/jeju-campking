package com.jeju_campking.campking.shop.food.repository;

import com.jeju_campking.campking.shop.food.entity.Food;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

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


    @Test
    @DisplayName("Dummy Data 넣어보기")
    void dummy() {
        //given
        //when
        //then

        String[] category = {"과일", "채소", "고기", "해산물"};
        String[] name = {"사과", "양파", "삼겹살", "대하새우"};
        String[] info = {"맛있는 사과<br>맛있는 사과", "맛있는 양파<br>맛있는 양파", "맛있는 삼겹살<br>맛있는 삼겹살", "맛있는 대하 새우<br>맛있는 대하 새우"};
        String[] img = {"/assets/shop/food/fruit.jpg"
                , "/assets/shop/food/vegetable.jpg"
                , "/assets/shop/food/meat.jpg"
                , "/assets/shop/food/seafood.jpg"
        };

        Long[] price = {5000L, 3000L, 10000L, 15000L};

        for (int i = 0; i < 50; i++) {
            int index = (int) (Math.random() * 4); // 0 1 2 3

            mapper.insert(Food.builder()
                    .foodName(name[index] + i)
                    .foodPrice((long) (Math.random() * 5000 + price[index]))
                    .foodInfo(info[index])
                    .foodCategory(category[index])
                    .foodImg(img[index])
                    .build());
        }

//        }
//
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("채소")
//                    .foodImg("/assets/shop/food/vegetable.jpg")
//                    .foodPrice((long) (Math.random() * 5000 + 5000))
//                    .foodInfo("영양가 만점 양파에요.")
//                    .foodName("양파" + i)
//                    .build());
//        }
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("고기")
//                    .foodImg("/assets/shop/food/meat.jpg")
//                    .foodPrice((long) (Math.random() * 15000 + 5000))
//                    .foodInfo("구워먹으면 맛있는 고기입니다.")
//                    .foodName("삼겹살" + i)
//                    .build());
//        }
//        for (int i = 1; i < 100; i++) {
//            mapper.insert(Food.builder()
//                    .foodCategory("해산물")
//                    .foodImg("/assets/shop/food/seafood.jpg")
//                    .foodPrice((long) (Math.random() * 8000 + 5000))
//                    .foodInfo("쫄깃한 대하새우입니다.")
//                    .foodName("새우" + i)
//                    .build());
//        }


    }
}