package com.jeju_campking.campking.party.controller;


import com.jeju_campking.campking.party.service.PartyReplyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("parties-reply")
@Slf4j
public class PartyReplyController {
    private final PartyReplyService partyReplyService;
}
