package com.jeju_campking.campking.mypage.controller;

import com.jeju_campking.campking.member.dto.response.LoginUserResponseDTO;
import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.dto.request.MypageUpdateMemberRequestDTO;
import com.jeju_campking.campking.mypage.dto.response.MypageMemberResponseDTO;
import com.jeju_campking.campking.mypage.dto.response.MypageUpdateMemberResponseDTO;
import com.jeju_campking.campking.mypage.service.MypageService;
import com.jeju_campking.campking.mypage.service.MypageUpdateService;
import com.jeju_campking.campking.util.upload.FileUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

/*
    데이터 전송없이 마이페이지 화면만 띄워주는 용도의 컨트롤러입니다.
 */

@Controller
@RequiredArgsConstructor
@RequestMapping("/jeju-camps/mypage")
@Slf4j
public class MypageViewController {

    @Value("D:/campking-prj/upload/")
    private String rootPath;
    private final MypageUpdateService mypageUpdateService;

    // 마이페이지
    @GetMapping("/{memberNumber}")
    public String findMember(@PathVariable Long memberNumber, HttpSession session) {

        LoginUserResponseDTO login = (LoginUserResponseDTO) session.getAttribute("LOGIN");
        if(memberNumber!= login.getMemberNumber()){
            return "redirect:/jeju-camps";
        }


        return "mypage/mypage";

    }

    // 개인정보 수정 페이지
    // 회원의 전체 정보를 모델에 담아 수정 페이지로 이동합니다.
    @GetMapping("/update/{memberNumber}")
    public String updateMember(@PathVariable Long memberNumber, Model model) {
        Member foundMember = mypageUpdateService.findMember(memberNumber);
        MypageUpdateMemberResponseDTO dto = new MypageUpdateMemberResponseDTO(foundMember);
        log.info("MypageViewController.updateMember.dto : {}", dto);
        model.addAttribute("member", dto);
        return "mypage/update";
    }

    // 회원의 비밀번호, 닉네임, 전화번호, 프로필사진 수정
    @PostMapping("update/{memberNumber}")
    public String updateMember(
            @PathVariable Long memberNumber,
            MypageUpdateMemberRequestDTO dto
    ) {
        log.info("MypageController updateMember : {}", memberNumber);

        MultipartFile profileImage = dto.getProfileImage();

        String savePath = null;

        if(!profileImage.isEmpty()) {
            savePath = FileUtil.uploadFile(profileImage, rootPath);
        }

        mypageUpdateService.updateMember(dto, savePath);

        return "mypage/mypage";
    }
}

