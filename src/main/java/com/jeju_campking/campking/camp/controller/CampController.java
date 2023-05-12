package com.jeju_campking.campking.camp.controller;

import com.jeju_campking.campking.camp.entity.Camp;
import com.jeju_campking.campking.camp.service.CampService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;
import java.util.List;


//TODO: 캠프장 관련 데이터 보여주기
@RestController
// response JSON , XML
// server 에 만들 수 있는 view template : jsp.... 서버사이드렌더링
// REST API : 서버는 데이터만 정제해서 client
@RequiredArgsConstructor
@RequestMapping("/camps")
@Slf4j
public class CampController {
    private final CampService campService;


    // 전체 캠핑장 목록조회 요청
    @GetMapping("/all-list")
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
    @GetMapping("/{keyword}")

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

    @GetMapping("/test")
    public ModelAndView test() {
        // JSP 로 응답할 때
        return new ModelAndView("index");
    }

}