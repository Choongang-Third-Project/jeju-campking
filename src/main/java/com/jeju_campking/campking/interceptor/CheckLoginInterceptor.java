package com.jeju_campking.campking.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.jeju_campking.campking.util.LoginUtil.*;

@Configuration
@Slf4j
public class CheckLoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();

        if (!isLogin(session)) {
            log.info("로그인 하지 않았음 {} ", session);
            response.sendRedirect("/login");
            return false;
        }


        return true;
    }
}
