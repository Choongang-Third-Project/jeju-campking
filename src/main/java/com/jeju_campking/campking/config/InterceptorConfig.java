package com.jeju_campking.campking.config;

import com.jeju_campking.campking.interceptor.AfterLoginInterceptor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


// 인터셉터 setup
@Configuration
@RequiredArgsConstructor
public class InterceptorConfig implements WebMvcConfigurer {

    private final AfterLoginInterceptor afterLoginInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {


        registry.addInterceptor(afterLoginInterceptor)
                .addPathPatterns("/jeju-camps")
                .excludePathPatterns("/join", "/login"); // 어떤 경로에서 인터셉터할 것인가 모든 페이지


//        registry.addInterceptor(null)
//                .addPathPatterns("");
//
//
//
//        registry.addInterceptor(null)
//                .addPathPatterns("");


    }
}
