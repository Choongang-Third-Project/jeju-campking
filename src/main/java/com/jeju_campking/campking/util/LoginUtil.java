package com.jeju_campking.campking.util;

import com.jeju_campking.campking.member.dto.response.LoginUserResponseDTO;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginUtil {
    public static final String LOGIN_KEY = "LOGIN";
    public static final String AUTO_LOGIN_COOKIE = "AUTO";


    // 로그인 여부 확인
    public static boolean isLogin(HttpSession session) {
        return session.getAttribute(LOGIN_KEY) != null;
    }


    // 자동 로그인 여부 확인
    public static boolean isAutoLogin(HttpServletRequest request) {
        return WebUtils.getCookie(request, AUTO_LOGIN_COOKIE) != null;
    }


    // 로그인한 사람의 계정명을 반환하는 메서드
    public static String getCurrentLoginMemberId(HttpSession session) {
        LoginUserResponseDTO loginUser = (LoginUserResponseDTO) session.getAttribute(LOGIN_KEY);
        System.out.println("member.getMemberEmail() = " + loginUser.getMemberEmail());
        return loginUser.getMemberEmail();
    }


    // 관리자인지 확인해주는 메서드 (추후 추가 기능..)


    // 내가 쓴 게시물인지 확인해주는 메서드
    // 로그인한 사람 계정명과 실제 게시물 계정명
    public static boolean isMine(HttpSession session, String email) {
        return email.equals(getCurrentLoginMemberId(session));
    }


}
