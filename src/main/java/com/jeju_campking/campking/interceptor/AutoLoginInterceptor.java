package com.jeju_campking.campking.interceptor;

import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.member.repository.MemberMapper;
import com.jeju_campking.campking.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
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

        Cookie cookie = WebUtils.getCookie(request, AUTO_LOGIN_COOKIE);

        if (cookie != null) {
            // 2. 쿠키에 저장된 세션 아이디를 읽는다
            String sessionId = cookie.getValue();

            // 3. DB 에서 세션 아이디로 회원 정보를 조회한다.
            // SQL 필요

            Member foundMember = memberMapper.findMemberByCookie(sessionId);

            // 4. 회원이 조회가 되었고 만료일 이전이라면
            if (foundMember != null && LocalDateTime.now().isBefore(foundMember.getMemberCookieDate())) {
                // 5. 로그인 처리
                memberService.maintainLoginState(request.getSession(), foundMember.getMemberEmail());
                response.sendRedirect("/jeju-camps");
            }

        }


        return true;
    }
}
