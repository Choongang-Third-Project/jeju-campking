package com.jeju_campking.campking.party.controller;

import com.jeju_campking.campking.party.dto.request.PartyModifyRequestDTO;
import com.jeju_campking.campking.party.dto.request.PartySaveRequestDTO;
import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import com.jeju_campking.campking.party.service.PartyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/parties")
@Slf4j
// TODO: // 체크하기
public class PartyController {
    private final PartyService partyService;

    @ResponseBody
    @GetMapping("/all-list/{type}/{sort}")
    public ResponseEntity<?> findAllBySort(
            @PathVariable(required = false) String type,
            @PathVariable(required = false) String sort
    ) {
        log.info("partyController/findAllBySort : type= {}, sort= {}", type, sort);
        List<PartyAllListResponseDTO> allBySort = partyService.findAllBySort(type, sort);

        log.info("{}", allBySort.get(0));

        return ResponseEntity.ok().body(allBySort);
    }

    @GetMapping("/write")
    public String write() {
        return "/yejin/party_write";
    }


    @PostMapping("/write")
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

    @DeleteMapping("/{partyNumber}/{memberNumber}")
    public ModelAndView deleteByNumber(
            @PathVariable Long partyNumber,
            @PathVariable Long memberNumber
    ) {

        try {
            boolean isDelete = partyService.deleteByNumber(partyNumber, memberNumber);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return redirectList();
    }

    @ResponseBody
    @RequestMapping(path = "/{memberNumber}", method = {RequestMethod.PUT, RequestMethod.PATCH})
    public ModelAndView modify(
            @Validated @RequestBody PartyModifyRequestDTO dto,
            @PathVariable Long memberNumber
    ) {

        try {
            boolean isModify = partyService.modify(dto, memberNumber);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return redirectList();
    }

    private ModelAndView redirectList() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/jeju-camps/parties/all-list/*/*");
        modelAndView.addObject("test", "test!!");
        return modelAndView;
    }




}

