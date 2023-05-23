package com.jeju_campking.campking.config;

import com.jeju_campking.campking.interceptor.AutoLoginInterceptor;
import com.jeju_campking.campking.interceptor.CheckLoginInterceptor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


// 인터셉터 setup
@Configuration
@RequiredArgsConstructor
public class InterceptorConfig implements WebMvcConfigurer {

    private final CheckLoginInterceptor checkLoginInterceptor;
    private final AutoLoginInterceptor autoLoginInterceptor;


    @Override
    public void addInterceptors(InterceptorRegistry registry) {

//        registry.addInterceptor(checkLoginInterceptor)
//                .addPathPatterns("/*")
//                .addPathPatterns("/jeju-camps/**")
//                .excludePathPatterns("/join", "/login", "/", "/kakao/*", "/sns")
//        ;
//
//        registry.addInterceptor(autoLoginInterceptor)
//                .addPathPatterns("/")
//                .addPathPatterns("/join")
//                .addPathPatterns("/login")
//        ;

    }
}
