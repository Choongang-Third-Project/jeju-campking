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

    public List<HighcostResponseDTO> findByCategory(String category) {
        return highcostMapper.findByCategory(category);
    }
}
