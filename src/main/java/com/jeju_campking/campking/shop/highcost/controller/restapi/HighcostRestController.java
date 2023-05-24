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
@RequestMapping("/api/v1/highcost")
@Slf4j
public class HighcostRestController {

    private final HighcostService highcostService;

    /**
     * 고가장비 데이터 전체를 조회하여 리스트로 반환합니다.
     * @return - 고가장비 리스트
     */
    @GetMapping("/highcosts")
    public ApplicationResponse<List<HighcostResponseDTO>> findAll() {
        List<HighcostResponseDTO> highcostList = highcostService.findAll();
        log.info("HighcostRestController/findAll - highcostList : {}", highcostList);
        return ApplicationResponse.ok(highcostList);
    }

    /**
     * 파라미터로 받은 장비번호의 고가장비 데이터 1개를 반환합니다.
     * @param highcostInx - 장비번호
     * @return 고가장비 데이터 1개
     */
    @GetMapping("/{highcostInx}")
    public ApplicationResponse<HighcostResponseDTO> findOne(@PathVariable Long highcostInx) {
        HighcostResponseDTO highcost = highcostService.findOne(highcostInx);
        log.info("HighcostRestController/findOne - highcost : {}", highcost);
        return ApplicationResponse.ok(highcost);
    }

    /**
     * 파라미터로 받은 카테고리와 카테고리 값이 동일한 고가장비 리스트를 반환합니다. 
     * @param category - 카테고리
     * @return 고가장비 리스트
     */
    @GetMapping("/{category}")
    public ApplicationResponse<List<HighcostResponseDTO>> findByCategory(@PathVariable String category) {
        List<HighcostResponseDTO> highcostListByCategory = highcostService.findByCategory(category);
        log.info("HighcostRestController/findByCategory - highcost : {}", highcostListByCategory);
        return ApplicationResponse.ok(highcostListByCategory);
    }
}
