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

//    @GetMapping("/{highcostInx}")
//    public ApplicationResponse<?> findOne(@PathVariable Long highcostInx) {
//        highcostService.findOne(highcostInx);
//    }
}
