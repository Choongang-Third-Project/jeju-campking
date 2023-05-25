package com.jeju_campking.campking.consumable.controller;

import com.jeju_campking.campking.common.reponse.ApplicationResponse;
import com.jeju_campking.campking.consumable.dto.response.ConsumableResponseDTO;
import com.jeju_campking.campking.consumable.service.ConsumableService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/items/consumable/")
@Slf4j
public class ConsumableController {
    private final ConsumableService consumableService;

    @GetMapping
    public ApplicationResponse<?> findAll() {

        List<ConsumableResponseDTO> dtoList = consumableService.findAll();
        log.info("/api/v1/items/consumable/ - GET {}", dtoList);

        return ApplicationResponse.ok(dtoList);
    }


    /**
     * @param priceNum
     * @return
     */
    @GetMapping("price/{priceNum}")
    public ApplicationResponse<?> findByPrice(@PathVariable int priceNum) {

        List<ConsumableResponseDTO> dtoList = consumableService.priceList(priceNum);
        log.info("/api/v1/items/consumable/price - GET {}", dtoList);

        return ApplicationResponse.ok(dtoList);
    }


    @GetMapping("category/{categoryNum}")
    public ApplicationResponse<?> findByCategory(@PathVariable int categoryNum) {

        List<ConsumableResponseDTO> dtoList = consumableService.findByCategory(categoryNum);
        log.info("/api/v1/items/consumable/category - GET {}", dtoList);

        return ApplicationResponse.ok(dtoList);
    }







}
