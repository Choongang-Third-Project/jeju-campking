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
    @DisplayName("더미데이터 400개 생성 쿼리")
    void createDummyData() {
        System.out.println("INSERT INTO tb_highcost (" +
                "highcost_idx, \n" +
                "highcost_name, \n" +
                "highcost_price,\n" +
                "highcost_info,\n" +
                "highcost_category,\n" +
                "highcost_img)\n" +
                "VALUES ");
        for (int i = 0; i < 400; i++) {
            System.out.println("(" +
                    i + ", " +
                    "'고가장비" + i + "', " +
                    (100000 + i) + ", " +
                    "'짱조은 고가장비입니다~'" + ", " +
                    "'텐트', " +
                    i +
                    "),");
        }
    }

    @Test
    @DisplayName("고가장비의 전체 데이터의 개수는 400개여야 한다.")
    void findAll() {
        // given
        // when
        List<HighcostResponseDTO> highcostList = highcostMapper.findAll();
        // then
        assertEquals(400, highcostList.size());
    }

    @Test
    @DisplayName("장비번호가 10인 데이터의 카테고리는 텐트여야 하고, 가격은 100,010원이어야 한다.")
    void findOne() {
        // given
        Long highcostIdx = 10L;
        // when
        HighcostResponseDTO highcost = highcostMapper.findOne(highcostIdx);
        // then
        assertEquals("텐트", highcost.getHighcostCategory());
        System.out.println(highcost);
        assertEquals("100,010원", highcost.getHighcostPrice());
    }

    @Test
    @DisplayName("카테고리가 텐트인 데이터의 개수는 100개여야 한다.")
    void findByCategory() {
        // given
        String category = "텐트";
        // when
        List<HighcostResponseDTO> highcostListByCategory = highcostMapper.findByCategory(category);
        // then
        assertEquals(100, highcostListByCategory.size());
    }

    @Test
    @DisplayName("장비번호가 250번인 고가장비의 카테고리는 테이블이어야 한다.")
    void findCategoryByHighcostNumber() {
        // given
        Long highcostIdx = 250L;
        // when
        HighcostResponseDTO highcost = highcostMapper.findOne(highcostIdx);
        // then
        assertEquals("테이블", highcost.getHighcostCategory());
    }
}