package com.jeju_campking.campking.party.controller;

import com.jeju_campking.campking.party.service.PartyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequiredArgsConstructor
@RequestMapping("/parties")
@Slf4j
public class PartyController {
    private final PartyService partyService;
}

