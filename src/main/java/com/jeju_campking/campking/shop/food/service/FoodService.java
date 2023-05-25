package com.jeju_campking.campking.shop.food.service;

import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
import com.jeju_campking.campking.shop.food.entity.Food;
import com.jeju_campking.campking.shop.food.repository.FoodMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class FoodService {


    private final FoodMapper foodMapper;
    public final int 과일 = 1;
    public final int 채소 = 2;
    public final int 고기 = 3;
    public final int 해산물 = 4;


    @Transactional
    public List<FoodResponseDTO> findAll(){
        List<Food> foodList = foodMapper.findAll();

        List<FoodResponseDTO> list = foodList.stream().map(FoodResponseDTO::convertFood).collect(Collectors.toList());
        log.info("food findAll {} ", list);

        return list;
    }

    @Transactional
    public List<FoodResponseDTO> priceDesc(){
        List<Food> foodList = foodMapper.priceDesc();
        return foodList.stream().map(FoodResponseDTO::convertFood).collect(Collectors.toList());
    }

    @Transactional
    public List<FoodResponseDTO> priceAsc(){
        List<Food> foodList = foodMapper.priceAsc();
        return foodList.stream().map(FoodResponseDTO::convertFood).collect(Collectors.toList());
    }

    @Transactional
    public List<FoodResponseDTO> category(int type){
        String category = "";
        switch (type){
            case 과일:
                category = "과일";
                break;
            case 채소:
                category = "채소";
                break;
            case 고기:
                category = "고기";
                break;
            case 해산물:
                category = "해산물";
                break;
        }
        List<Food> foodList = foodMapper.category(category);
        return foodList.stream().map(FoodResponseDTO::convertFood).collect(Collectors.toList());
    }





}
