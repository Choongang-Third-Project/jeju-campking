package com.jeju_campking.campking.shop.highcost.repository;

import com.jeju_campking.campking.shop.highcost.dto.response.HighcostResponseDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;


@SpringBootTest
class HighcostMapperTest {

    @Autowired
    private HighcostMapper highcostMapper;

    @Test
    @DisplayName("고가장비의 전체 데이터의 개수는 400개여야 한다.")
    void findAll() {
        // given
        // when
        List<HighcostResponseDTO> highcostList = highcostMapper.findAll();
        // then
        assertEquals(400, highcostList.size());
    }

}