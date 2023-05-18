package com.jeju_campking.campking.camp.controller;

import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.board.service.BoardService;
import com.jeju_campking.campking.camp.dto.response.CampTypeCountResponseDTO;
import com.jeju_campking.campking.camp.entity.Camp;
import com.jeju_campking.campking.camp.service.CampService;
import com.jeju_campking.campking.rank.dto.response.CampRankResponseDTO;
import com.jeju_campking.campking.rank.dto.response.PartyListResponseDTO;
import com.jeju_campking.campking.rank.service.RankService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;
import java.util.List;


//TODO: 캠프장 관련 데이터 보여주기
@Controller
// response JSON , XML
// server 에 만들 수 있는 view template : jsp.... 서버사이드렌더링
// REST API : 서버는 데이터만 정제해서 client
@RequiredArgsConstructor
//@RequestMapping("/jeju-camps/info")
@Slf4j
public class CampController {
    private final CampService campService;
    private final RankService rankService;
    private final BoardService boardService;

    // 전체 캠핑장 목록조회 요청
    @GetMapping("/jeju-camps/info/all-list")
    @ResponseBody
    public ResponseEntity<?> findAll() {
        log.info("/camps/all-lsit  GET!!");
        List<Camp> list = null;
        try {
            list = campService.findAll();
            return ResponseEntity.ok().body(list);
        } catch (SQLException e) {
            log.warn("/camps/all-list GET : {}", list);
            return ResponseEntity
                    .internalServerError()
                    .body(e.getMessage());
        }
    }

    //주소로 캠프장 하나 찾기
    @GetMapping("/jeju-camps/info/{keyword}")
    @ResponseBody
    public ResponseEntity<?> findByKeyword(@PathVariable(required = false) String keyword) {
        log.info("/camps/address : GET!! {} ", keyword);

        List<Camp> byKeyword = null;
        try {
            byKeyword = campService.findByKeyword(keyword);

            return ResponseEntity.ok().body(byKeyword);
        } catch (SQLException e) {
            log.warn("/camps/all-list GET : {}", byKeyword);
            return null;
        }
    }


    // GetMapping 제목 전송하면 campBoard/detail.jsp로 이동
    @GetMapping("/jeju-camps/info/details")
    public ModelAndView detailCampBoard(String title) {
        log.info("/camps/detail/address : POST!! {} ", title);
        ModelAndView mv = new ModelAndView("/campBoard/detail");
        List<Camp> byKeyword = null;
        try {
            byKeyword = campService.findByKeyword(title);
            mv.addObject("campBoard", byKeyword.get(0));
            return mv;
        } catch (SQLException e) {
            log.warn("/camps/all-list POST : {}", byKeyword);
            return null;
        }
    }


    @GetMapping("/test")
    public ModelAndView test() {
        // JSP 로 응답할 때
        return new ModelAndView("index");
    }


    // 홈화면에 표시 할 캠프타입별 카운트, 퍼센트
    @GetMapping("/jeju-camps")
    public String camps(Model model) {

        CampTypeCountResponseDTO campCount = campService.getCampCount();
        List<CampRankResponseDTO> campRankList = rankService.getCampRankList();
        List<PartyListResponseDTO> partyList = rankService.getPartyList();
        List<Board> recentTwo = boardService.findRecentTwo();
        model.addAttribute("c", campCount);
        model.addAttribute("campRank", campRankList);
        model.addAttribute("partyRank", partyList);
        model.addAttribute("notice", recentTwo);

        return "/jeju-camps";
    }


}