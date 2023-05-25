package com.jeju_campking.campking.shop.event.controller.api;

import org.springframework.web.bind.annotation.RestController;
import com.jeju_campking.campking.common.reponse.ApplicationResponse;
import com.jeju_campking.campking.shop.event.dto.EventListResponseDTO;
import com.jeju_campking.campking.shop.event.service.EventService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/items/event/")
@Slf4j
public class EventController {

    private final EventService eventService;

    @GetMapping
    public ApplicationResponse<?> findAll() {

        List<EventListResponseDTO> dtoList = eventService.findAll();

        log.info("/api/v1/items/event/ - GET {}", dtoList);

        return ApplicationResponse.ok(dtoList);
    }
}