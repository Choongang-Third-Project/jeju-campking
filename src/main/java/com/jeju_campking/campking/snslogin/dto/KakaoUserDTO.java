package com.jeju_campking.campking.snslogin.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
public class KakaoUserDTO {

    private Long id;

    @JsonProperty("connected_at")
    private LocalDateTime connectedAt;

    @JsonProperty("kakao_account")
    private KakaoAccount kakaoAccount;

    @Getter
    @Setter
    @ToString
    public static class KakaoAccount {
        private String email;
        private Profile profile;

        @Getter
        @Setter
        @ToString
        public static class Profile {
            private String nickname;

            @JsonProperty("profile_image_url")
            private String profileImageUrl;
        }

    }
}
