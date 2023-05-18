package com.jeju_campking.campking.interceptor;

import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.member.repository.MemberMapper;
import com.jeju_campking.campking.member.service.MemberService;
import com.jeju_campking.campking.util.LoginUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.time.LocalDateTime;

import static com.jeju_campking.campking.util.LoginUtil.*;

@Configuration
@RequiredArgsConstructor
// 자동 로그인 인터셉터
public class AutoLoginInterceptor implements HandlerInterceptor {

    private final MemberMapper memberMapper;
    private final MemberService memberService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 1. 자동 로그인 쿠키를 탐색

        Cookie cookie = WebUtils.getCookie(null,null);

        // 2. 쿠키에 저장된 세션 아이디를 읽는다



        // 3. DB 에서 세션 아이디로 회원 정보를 조회한다.
        // SQL 필요



        // 4. 회원이 조회가 되었고 만료일 이전이라면



        // 5. 로그인 처리
        // memberService

        return true;
    }
}
