package com.jeju_campking.campking.shop.highcost.controller.restapi;

import com.jeju_campking.campking.common.reponse.ApplicationResponse;
import com.jeju_campking.campking.shop.highcost.dto.response.HighcostResponseDTO;
import com.jeju_campking.campking.shop.highcost.service.HighcostService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/items/highcost")
@Slf4j
public class HighcostRestController {

    private final HighcostService highcostService;

    /**
     * 고가장비 데이터 전체를 조회하여 리스트로 반환합니다.
     * @return - 고가장비 리스트
     */
    @GetMapping()
    public ApplicationResponse<List<HighcostResponseDTO>> findAll() {
        List<HighcostResponseDTO> highcostList = highcostService.findAll();
        log.info("HighcostRestController/findAll - highcostList : {}", highcostList);
        return ApplicationResponse.ok(highcostList);
    }

    /**
     * 장비번호에 따른 고가장비 데이터 1개를 반환합니다.
     * @param highcostInx - 장비번호
     * @return - 고가장비 데이터 1개
     */
    @GetMapping("/{highcostInx}")
    public ApplicationResponse<HighcostResponseDTO> findOne(@PathVariable Long highcostInx) {
        HighcostResponseDTO highcost = highcostService.findOne(highcostInx);
        log.info("HighcostRestController/findOne - highcost : {}", highcost);
        return ApplicationResponse.ok(highcost);
    }

    /**
     * @param categoryNumber - 카테고리
     * @return - 카테고리에 따라 분류된 고가장비 리스트
     */
    @GetMapping("/category/{categoryNumber}")
    public ApplicationResponse<List<HighcostResponseDTO>> findByCategory(@PathVariable int categoryNumber) {
        List<HighcostResponseDTO> highcostListByCategory = highcostService.findByCategory(categoryNumber);
        log.info("HighcostRestController/findByCategory - highcost : {}", highcostListByCategory);
        return ApplicationResponse.ok(highcostListByCategory);
    }

    /**
     * @param priceNumber - 1 (오름차순) 또는 2 (내림차순)
     * @return - 가격순으로 조회한 고가장비 리스트를 반환합니다.
     */
    @GetMapping("/price/{priceNumber}")
    public ApplicationResponse<List<HighcostResponseDTO>> SortedByPrice(@PathVariable int priceNumber) {
        List<HighcostResponseDTO> highcostListByPrice = highcostService.sortedByPrice(priceNumber);
        log.info("HighcostRestController/SortedByPrice - highcost : {}", highcostListByPrice);
        return ApplicationResponse.ok(highcostListByPrice);
    }

    @GetMapping("/popular/{popularNumber}")
    public ApplicationResponse<List<HighcostResponseDTO>> SortedByPopular(@PathVariable int popularNumber) {
        List<HighcostResponseDTO> highcostListByPopular = highcostService.sortedByPopular(popularNumber);
        log.info("HighcostRestController/SortedByPrice - highcost : {}", highcostListByPopular);
        return ApplicationResponse.ok(highcostListByPopular);
    }

}
