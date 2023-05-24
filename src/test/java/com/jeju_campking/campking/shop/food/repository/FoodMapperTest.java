package com.jeju_campking.campking.shop.food.repository;

import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
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
    void findAll(){
        List<FoodResponseDTO> all = mapper.findAll();
        for (FoodResponseDTO foodResponseDTO : all) {
            System.out.println(foodResponseDTO);
        }



    }

}