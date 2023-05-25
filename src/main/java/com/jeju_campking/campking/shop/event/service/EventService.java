package com.jeju_campking.campking.shop.event.service;

import com.jeju_campking.campking.shop.event.dto.EventListResponseDTO;
import com.jeju_campking.campking.shop.event.entity.Event;
import com.jeju_campking.campking.shop.event.repository.EventMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class EventService {

    private final EventMapper eventMapper;

    public List<EventListResponseDTO> findAll() {
        List<Event> eventList = eventMapper.findAll();
        return eventList.stream().map(event -> new EventListResponseDTO(event)).collect(Collectors.toList());
    }


    public List<EventListResponseDTO> findByPrice(int priceNum) {
        List<Event> eventList;
        if (priceNum == 1) {
            eventList = eventMapper.findByPriceDesc(priceNum);
        } else {
            eventList = eventMapper.findByPriceAsc(priceNum);
        }

        return eventList.stream().map(event -> new EventListResponseDTO(event)).collect(Collectors.toList());
    }



    public List<EventListResponseDTO> findByCategory(int categoryNum) {
        String eventCategory;
        switch (categoryNum) {
            case 1:
                eventCategory = "생일파티";
                break;
            case 2:
                eventCategory = "프로포즈";
                break;
            case 3:
                eventCategory = "어버이날";
                break;
            case 4:
                eventCategory = "기타";
                break;
            default:
                return Collections.emptyList();
        }
        List<Event> eventList = eventMapper.findByCategory(eventCategory);
        return eventList.stream().map(EventListResponseDTO::new).collect(Collectors.toList());
    }




}