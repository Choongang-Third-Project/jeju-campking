package com.jeju_campking.campking.member.dto.request;


import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberLoginRequestDTO {
    // TODO : 로그인 정보
    private String memberEmail;
    private String memberPassword;
}