package com.jeju_campking.campking.shop.event.service;

import com.jeju_campking.campking.shop.event.dto.EventListResponseDTO;
import com.jeju_campking.campking.shop.event.entity.Event;
import com.jeju_campking.campking.shop.event.repository.EventMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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








}