package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.member.dto.response.LoginUserResponseDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.dto.request.MypageUpdateMemberRequestDTO;
import com.jeju_campking.campking.mypage.service.MypageUpdateService;
import com.jeju_campking.campking.util.upload.FileUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

/*
    마이페이지의 회원 정보 수정을 관리하는 컨트롤러입니다.
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/api/v1/mypages-update")
@Slf4j
public class MypageUpdateController {

    @Value("D:/campking-prj/upload/")
    private String rootPath;
    private final MypageUpdateService mypageUpdateService;

    @GetMapping("/{memberNumber}")
    public ResponseEntity<?> findMember(
            @PathVariable Long memberNumber
    ) {
        log.info("MypageController findMember : {}", memberNumber);
        Member foundMember = mypageUpdateService.findMember(memberNumber);
        return ResponseEntity.ok().body(foundMember);
    }

    // 회원의 비밀번호, 닉네임, 전화번호, 프로필사진 수정
    @PostMapping("/{memberNumber}")
    public ResponseEntity<?> updateMember(
            @PathVariable Long memberNumber,
            MypageUpdateMemberRequestDTO dto,
            HttpSession session
    ) {
        log.info("MypageController updateMember : -----------------------------------------------{}", memberNumber);


        MultipartFile profileImage = dto.getProfileImage();

        log.info("profileImage profileImage : ------------------------------------{}", profileImage);

        String savePath =  null;

        if(profileImage!=null) {
            savePath = FileUtil.uploadFile(profileImage, rootPath);
        } else {
            log.info("ㅎㅇㅎㅇㅎㅇ");
            LoginUserResponseDTO login = (LoginUserResponseDTO) session.getAttribute("LOGIN");
            savePath = login.getProfile();
        }

        boolean isUpdated = mypageUpdateService.updateMember(dto, savePath, session);

        // 변경 성공 여부 전달
        return ResponseEntity.ok().body(isUpdated);
    }

    // 닉네임, 휴대전화 수정 시 중복검사
    @GetMapping("/check")
    public ResponseEntity<?> check(String type, String keyword) {

        log.info("/jeju-camps/api/v1/mypages-update/check?type={}&keyword={} ASYNC GET", type, keyword);

        boolean flag = mypageUpdateService.checkSignUpValue(type, keyword);
        return ResponseEntity.ok().body(flag);
    }
}
