package com.jeju_campking.campking.shop.food.service;

import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
import com.jeju_campking.campking.shop.food.entity.Food;
import com.jeju_campking.campking.shop.food.repository.FoodMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class FoodService {


    private final FoodMapper foodMapper;


    public List<FoodResponseDTO> findAll(){
        List<FoodResponseDTO> list = foodMapper.findAll();
        log.info("food findAll {} ", list);
        return list;
    }




}
