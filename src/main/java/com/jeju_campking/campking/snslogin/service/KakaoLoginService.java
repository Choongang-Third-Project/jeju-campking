package com.jeju_campking.campking.snslogin.service;

import com.jeju_campking.campking.snslogin.dto.KakaoUserDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Service
@Slf4j
public class KakaoLoginService {

    public void kakaoService(Map<String, String> requestMap) {

//        String accessToken = getKakaoAccessToken(requestMap);
//        log.info("token : {}", accessToken);
//
//        KakaoUserDTO kakaoUserDTO = getKakaoUserDTO(accessToken);
//        log.info("kakaoUserDTO : {} ", kakaoUserDTO);

    }

    private KakaoUserDTO getKakaoUserDTO(String accessToken) {
        String requestURI = "https://kapi.kakao.com/v2/user/me";

        HttpHeaders httpHeaders = new HttpHeaders();

        httpHeaders.add("Authorization", "Bearer" + accessToken);

        RestTemplate template = new RestTemplate();
        ResponseEntity<KakaoUserDTO> responseEntity = template.exchange(
                requestURI
                , HttpMethod.GET
                , new HttpEntity<>(httpHeaders)
                , KakaoUserDTO.class
        );

        KakaoUserDTO responseData = responseEntity.getBody();
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
