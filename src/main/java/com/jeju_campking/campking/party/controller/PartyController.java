package com.jeju_campking.campking.party.controller;

import com.jeju_campking.campking.party.dto.request.PartyModifyRequestDTO;
import com.jeju_campking.campking.party.dto.request.PartySaveRequestDTO;
import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import com.jeju_campking.campking.party.service.PartyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/parties")
@Slf4j
public class PartyController {
    private final PartyService partyService;

    @GetMapping("/all-list/{type}/{sort}")
    public ResponseEntity<?> findAllBySort(
            @PathVariable String type,
            @PathVariable String sort
    ) {
        log.info("partyController/findAllBySort : type= {}, sort= {}", type, sort);
        List<PartyAllListResponseDTO> allBySort = partyService.findAllBySort(type, sort);
        return ResponseEntity.ok().body(allBySort);
    }


    @PostMapping()
    public ModelAndView save(
            @Validated @RequestBody PartySaveRequestDTO dto
    ) {
        log.info("partyController/POST/save : type= {}", dto);

        try {
            boolean isSave = partyService.save(dto);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return redirectList();
    }

    @DeleteMapping("/{partyNumber}")
    public ModelAndView deleteByNumber(
            @PathVariable Long partyNumber
    ) {

        try {
            boolean isDelete = partyService.deleteByNumber(partyNumber);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return redirectList();
    }

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH})
    public ModelAndView modify(
            @Validated @RequestBody PartyModifyRequestDTO dto
    ) {

        try {
            boolean isModify = partyService.modify(dto);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return redirectList();
    }

    private ModelAndView redirectList() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/jeju-camps/parties/all-list/*/*");

        return modelAndView;
    }
}

