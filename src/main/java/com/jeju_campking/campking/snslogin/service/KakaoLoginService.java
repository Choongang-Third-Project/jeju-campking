package com.jeju_campking.campking.snslogin.service;

import com.jeju_campking.campking.member.service.MemberService;
import com.jeju_campking.campking.snslogin.dto.KakaoSignUpRequestDTO;
import com.jeju_campking.campking.snslogin.dto.KakaoUserDTO;
import com.jeju_campking.campking.snslogin.entity.LoginMethod;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Slf4j
public class KakaoLoginService {

    private final MemberService memberService;


    public void kakaoService(Map<String, String> requestMap, HttpSession session) {

        String accessToken = getKakaoAccessToken(requestMap);
        log.info("---------------------------------- token : {}", accessToken);
//
        KakaoUserDTO kakaoUserDTO = getKakaoUserDTO(accessToken);
        log.info("---------------------------------- kakaoUserDTO : {} ", kakaoUserDTO);


        KakaoUserDTO.KakaoAccount kakaoAccount = kakaoUserDTO.getKakaoAccount();
        log.info("---------------------------------- kakaoAccount : {}", kakaoAccount);


        if (memberService.checkSignUpValue("email", kakaoAccount.getEmail())) {

            log.info("check signup value");
            try {
                boolean sign = memberService.sign(
                        KakaoSignUpRequestDTO.builder()
                                .email(kakaoAccount.getEmail())
                                .name(kakaoAccount.getProfile().getNickname())
                                .password("9999")
                                .loginMethod(LoginMethod.KAKAO)
//                                .memberPassword(dto.getPassword())
//                                .memberName(dto.getName())
//                                .memberNickname(dto.getName())
//                                .memberEmail(dto.getEmail())
//                                .profileImage(savePath)
//                                .build();
                                .build()
                        , kakaoAccount.getProfile().getProfileImageUrl()
                );

                memberService.maintainLoginState(session, kakaoAccount.getEmail());

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }


    }

    private KakaoUserDTO getKakaoUserDTO(String accessToken) {
        log.info("------------------------ accessToken : {}", accessToken);
        String requestURI = "https://kapi.kakao.com/v2/user/me";

        log.info("------------------------ requestURI : {}", requestURI);
        HttpHeaders httpHeaders = new HttpHeaders();

        log.info("----------------------------------");
        httpHeaders.add("Authorization", "Bearer" + accessToken);

        log.info("----------------------------------");


        RestTemplate template = new RestTemplate();
        log.info("---------------------------------- {}", httpHeaders);


        ResponseEntity<KakaoUserDTO> responseEntity = template.exchange(
                requestURI
                , HttpMethod.GET
                , new HttpEntity<>(httpHeaders)
                , KakaoUserDTO.class
        );


        log.info("----------------------------------");

        KakaoUserDTO responseData = responseEntity.getBody();
        log.info("----------------------------------");
        log.info("응답 데이터 : {}", responseData);

        return responseData;
    }


    private String getKakaoAccessToken(Map<String, String> requestMap) {
        log.info("requestMap : {}", requestMap);

        String requestURI = "https://kauth.kakao.com/oauth/token";

        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("grant_type", "authorization_code");
        params.add("client_id", requestMap.get("appKey"));
        params.add("redirect_uri", requestMap.get("redirect"));
        params.add("code", requestMap.get("code"));

        RestTemplate template = new RestTemplate();

        HttpEntity<Object> requestEntity = new HttpEntity<>(params, httpHeaders);

        ResponseEntity<Map> responseEntity = template.exchange(requestURI, HttpMethod.POST, requestEntity, Map.class);
        Map<String, Object> responseData = (Map<String, Object>) responseEntity.getBody();

        log.info("토근 요청 응답 데이터 : {}", responseEntity);

        return (String) responseData.get("access_token");
    }

}
