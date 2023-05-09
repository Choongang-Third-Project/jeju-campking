package com.jeju_campking.campking.camp.controller;

import com.jeju_campking.campking.camp.dto.response.CampResponseDTO;
import com.jeju_campking.campking.camp.service.CampService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.UpdateProvider;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.stylesheets.LinkStyle;

import java.util.List;


import static org.springframework.web.servlet.function.ServerResponse.ok;

//TODO: 캠프장 관련 데이터 보여주기
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/replies")
@Slf4j
//클라이언트의 접근을 어떤 app에서만 허용할 것인가
@CrossOrigin(origins = {"http://127.0.0.1:5501"}) //-예시
public class CampController {
    private final CampService campService;


    // 전체 캠핑장 목록조회 요청
    // URL : /api/v1/replies/3/page/3
    @GetMapping("/allsit")
    public ResponseEntity<?> list() {
        log.info("/api/v1/replies/allist : GET!!");
        List<CampResponseDTO> campResponseDTOList = campService.getAllList();

        return ResponseEntity.ok().body(campResponseDTOList);
    }

    //주소로 캠프장 하나 찾기
    @GetMapping("/{address}")
    public String detail(@PathVariable String address){
        log.info("/api/v1/replies/{address} : GET!! ",address);
        CampResponseDTO campResponseDTOList = campService.getList(address);

        return ok().body(campResponseDTOList);
    }


}
