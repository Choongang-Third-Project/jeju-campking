package com.jeju_campking.campking.config;

import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


// 인터셉터 setup
public class GlobalInterceptor implements WebMvcConfigurer {


    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 필요한 인터셉터
        // 로그인이 되어 있지 않다면 .. ?
        // 자동 로그인 인터셉터 처리 ..
        // 게시판, 쪽지, 및 서비스 관련 인터셉터 처리
        registry.addInterceptor(null)
                .addPathPatterns("");


        registry.addInterceptor(null)
                .addPathPatterns("");


        registry.addInterceptor(null)
                .addPathPatterns("");


        registry.addInterceptor(null)
                .addPathPatterns("");


        registry.addInterceptor(null)
                .addPathPatterns("");
    }
}
