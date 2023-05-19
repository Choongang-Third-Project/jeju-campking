package com.jeju_campking.campking.config;

import com.jeju_campking.campking.interceptor.AfterLoginInterceptor;
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
    private final AfterLoginInterceptor afterLoginInterceptor;
    private final AutoLoginInterceptor autoLoginInterceptor;


    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(checkLoginInterceptor)
                .addPathPatterns("/jeju-camps/**")
                .excludePathPatterns("/join", "/login", "/", "/resources/**", "/resources/")
        ;

//        registry.addInterceptor(afterLoginInterceptor)
////                .addPathPatterns("/jeju-camps") // 어떤 경로에서 인터셉터를 실행할 것인가
//                .excludePathPatterns("/join", "/login"); // 인터셉터를 실행하지 않을 경로
//
//        registry.addInterceptor(autoLoginInterceptor)
//                .addPathPatterns("/**")
//        ;

    }
}
