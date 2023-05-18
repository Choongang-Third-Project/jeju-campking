package com.jeju_campking.campking.mypage.dto.request;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypageUpdateMemberRequestDTO {
    private Long memberNumber;
    private String memberPassword;
    private String memberNickname;
    private String memberPhone;
    private String profileImage;
}
