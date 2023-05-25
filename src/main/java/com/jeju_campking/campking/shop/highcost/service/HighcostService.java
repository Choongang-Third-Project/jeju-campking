package com.jeju_campking.campking.shop.highcost.service;

import com.jeju_campking.campking.shop.highcost.dto.response.HighcostResponseDTO;
import com.jeju_campking.campking.shop.highcost.repository.HighcostMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class HighcostService {

    private final HighcostMapper highcostMapper;

    public List<HighcostResponseDTO> findAll() {
        return highcostMapper.findAll();
    }

    public HighcostResponseDTO findOne(Long highcostInx) {
        return highcostMapper.findOne(highcostInx);
    }

    public List<HighcostResponseDTO> findByCategory(int categoryNumber) {
        String category = null;
        switch (categoryNumber) {
            case 1 : category = "텐트";
                break;
            case 2 : category = "침낭/매트";
                break;
            case 3 : category = "테이블";
                break;
            case 4 : category = "스토브";
                break;
        }
        return highcostMapper.findByCategory(category);
    }

    /**
     * @param priceNumber - 1 이면 가격 내림차순 정렬, 2면 가격 오름차순 정렬
     * @return 가격에 따라 정렬을 진행하는 매퍼를 리턴합니다.
     */
    public List<HighcostResponseDTO> sortedByPrice(int priceNumber) {
        if (priceNumber == 1) return highcostMapper.sortedByPriceDesc(priceNumber);
        return highcostMapper.sortedByPriceAsc(priceNumber);
    }

    /**
     * 위와 동일.
     */
    public List<HighcostResponseDTO> sortedByPopular(int popularNumber) {
        if (popularNumber == 1) return highcostMapper.sortedByPopularDesc(popularNumber);
        return highcostMapper.sortedByPopularAsc(popularNumber);
    }
}
