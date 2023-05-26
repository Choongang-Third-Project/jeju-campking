package com.jeju_campking.campking.consumable.service;

import com.jeju_campking.campking.consumable.dto.response.ConsumableResponseDTO;
import com.jeju_campking.campking.consumable.entity.Consumable;
import com.jeju_campking.campking.consumable.repository.ConsumableMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class ConsumableService {
    private final ConsumableMapper consumableMapper;

    public List<ConsumableResponseDTO> findAll() {
        List<Consumable> consumableList = consumableMapper.findAll();
        return consumableList.stream().map(consumable -> new ConsumableResponseDTO(consumable)).collect(Collectors.toList());
    }

    public List<ConsumableResponseDTO> findByCategory(int categoryNum) {
        String category = null;
        if (categoryNum == 1) {
            category = "토치";
        } else if (categoryNum == 2) {
            category = "장작";
        } else if (categoryNum == 3) {
            category = "랜턴";
        } else if (categoryNum == 4) {
            category = "물티슈";
        }
        List<Consumable> consumableList = consumableMapper.findByCategory(category);
        return consumableList.stream().map(ConsumableResponseDTO::new).collect(Collectors.toList());
    }

    public List<ConsumableResponseDTO> findByPrice(int priceNum) {

        List<Consumable> consumableList;
        if (priceNum == 1) {
            consumableList = consumableMapper.priceHighList(priceNum);
        } else {
            consumableList = consumableMapper.priceLowList(priceNum);
        }
        return consumableList.stream().map(consumable -> new ConsumableResponseDTO(consumable)).collect(Collectors.toList());
    }


}
