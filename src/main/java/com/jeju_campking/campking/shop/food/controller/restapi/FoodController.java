package com.jeju_campking.campking.shop.food.controller.restapi;

import com.jeju_campking.campking.common.reponse.ApplicationResponse;
import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
import com.jeju_campking.campking.shop.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/items/food/")
@Slf4j
public class FoodController {

    private final FoodService foodService;


    @GetMapping
    public ApplicationResponse<?> findAll(){
        List<FoodResponseDTO> list = foodService.findAll();
        log.info("list ----------------- {}", list);

        return ApplicationResponse.ok(list);
    }



}
