package com.jeju_campking.campking.party.controller;


import com.jeju_campking.campking.common.reponse.ApplicationResponse;
import com.jeju_campking.campking.party.dto.response.PartyDetailResponseDTO;
import com.jeju_campking.campking.party.service.PartyDetailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/parties")
@Slf4j
public class PartyDetailController {

    private final PartyDetailService partyDetailService;

    @GetMapping("/{partyNumber}/{campType}")
    public String detail(
            @PathVariable Long partyNumber,
            @PathVariable String campType
            , Model model
    ) {
        log.info("input : {} ", partyNumber);
        log.info("input type : {} ", campType);

        PartyDetailResponseDTO partyDetailResponseDTO = partyDetailService.detailView(partyNumber);

        model.addAttribute("detail", partyDetailResponseDTO);
        model.addAttribute("type", campType);
        return "/party/party-detail";
    }

    @ResponseBody
    @DeleteMapping("/{partyNumber}")
    public ApplicationResponse<?> delete(
            @PathVariable Long partyNumber
    ) {
        log.info("partyNumber : {}", partyNumber);
        boolean isDelete = partyDetailService.deleteByNumber(partyNumber);
        log.info("isDelete : {}", isDelete);

        return ApplicationResponse.ok(isDelete);
    }

}
