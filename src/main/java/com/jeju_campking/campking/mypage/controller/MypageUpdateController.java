package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.service.MypageUpdateService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/*
    마이페이지의 회원 정보 수정을 관리하는 컨트롤러입니다.
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/api/v1/mypages/update")
@Slf4j
public class MypageUpdateController {

    MypageUpdateService mypageUpdateService;

    @GetMapping("/{memberNumber}")
    public ResponseEntity<?> findMember(
            @PathVariable Long memberNumber
    ) {
        log.info("MypageController findMember : {}", memberNumber);
        Member foundMember = mypageUpdateService.findMember(memberNumber);
        return ResponseEntity.ok().body(foundMember);
    }

    @PostMapping("/{memberNumber}")
    public ResponseEntity<?> updateMember(
            @PathVariable Long memberNumber
    ) {
        log.info("MypageController updateMember : {}", memberNumber);
        boolean isUpdated = mypageUpdateService.updateMember(memberNumber);
        return ResponseEntity.ok().body(isUpdated);
    }
}
