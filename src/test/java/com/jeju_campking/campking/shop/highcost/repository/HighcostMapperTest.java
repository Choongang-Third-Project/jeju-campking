package com.jeju_campking.campking.shop.highcost.repository;

import com.jeju_campking.campking.shop.highcost.dto.response.HighcostResponseDTO;
import com.jeju_campking.campking.shop.highcost.entity.Highcost;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Random;

import static org.junit.jupiter.api.Assertions.assertEquals;


@SpringBootTest
class HighcostMapperTest {

    @Autowired
    private HighcostMapper highcostMapper;

    @Test
    @DisplayName("더미데이터 50개 입력")
    void createDummyData() {
        String[] nameList = {"짱텐트", "침침낭", "테이블블", "스토부"};
        String[] infoList = {"짱 좋은 텐트~ 방수탁월ㄷㄷ", "아주 좋은 침낭/매트~", "완전 비싼 테이블~", "성능 짱짱 스토브~"};
        String[] categoryList = {"텐트", "침낭/매트", "테이블", "스토브"};
        String[] imageList = {"/assets/shop/highcost/tent.jpg",
                "/assets/shop/highcost/mat.jpg",
                "/assets/shop/highcost/table.jpg",
                "/assets/shop/highcost/stove.jpg"};
//        Long[] priceList = {100000L, 200000L, 300000L, 400000L};
        Random random = new Random();

        System.out.println("INSERT INTO tb_highcost (" +
                "highcost_name, \n" +
                "highcost_price,\n" +
                "highcost_info,\n" +
                "highcost_category,\n" +
                "highcost_img)\n" +
                "VALUES ");
        for (int i = 1; i <= 50; i++) {
            int randomNum = (int) (Math.random() * 4); // 0 1 2 3
            Long randomPrice = (long) ((Math.random() * 200000) + 100000);
            highcostMapper.insertHighcost(Highcost.builder()
                            .highcostName(nameList[randomNum] + i)
                            .highcostPrice(randomPrice)
                            .highcostInfo(infoList[randomNum])
                            .highcostCategory(categoryList[randomNum])
                            .highcostImg(imageList[randomNum])
                            .build());
        }
    }

    @Test
    @DisplayName("고가장비의 전체 데이터의 개수는 50개여야 한다.")
    void findAll() {
        // given
        // when
        List<HighcostResponseDTO> highcostList = highcostMapper.findAll();
        // then
        assertEquals(50, highcostList.size());
    }

    @Test
    @DisplayName("장비번호가 10인 데이터의 카테고리는 '침낭/매트'여야 하고, 가격은 259,361원이어야 한다.")
    void findOne() {
        // given
        Long highcostIdx = 10L;
        // when
        HighcostResponseDTO highcost = highcostMapper.findOne(highcostIdx);
        // then
        assertEquals("텐트", highcost.getHighcostCategory());
        System.out.println(highcost);
        assertEquals("259,361원", highcost.getHighcostPrice());
    }

    @Test
    @DisplayName("카테고리가 텐트인 데이터의 개수는 12개여야 한다.")
    void findByCategory() {
        // given
        String category = "텐트";
        // when
        List<HighcostResponseDTO> highcostListByCategory = highcostMapper.findByCategory(category);
        // then
        assertEquals(12, highcostListByCategory.size());
    }

    @Test
    @DisplayName("가격 내림차순으로 조회했을 때, 첫번째 데이터의 가격은 400,000원이어야 한다.")
    void findByPriceAsc() {
        // given
        int priceNumber = 1;
        // when
        List<HighcostResponseDTO> highcostListByPrice = highcostMapper.sortedByPriceDesc(priceNumber);
        // then
        assertEquals("400,000원",highcostListByPrice.get(0).getHighcostPrice());
    }
}