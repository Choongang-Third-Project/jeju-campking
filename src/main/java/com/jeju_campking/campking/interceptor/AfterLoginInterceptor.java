package com.jeju_campking.campking.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.jeju_campking.campking.util.LoginUtil.*;

@Configuration
// 로그인 이후 비회원 관련 페이지 진입 차단
public class AfterLoginInterceptor implements HandlerInterceptor {


    // 로그인이 되어 있지 않다면 홈으로 보내기
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();

        if (isLogin(session)) {
            response.sendRedirect("/login"); // TODO : 홈으로 보내기 or 로그인 페이지로 보내기
            return false;
        }

        return true;
    }
}
