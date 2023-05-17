package com.jeju_campking.campking.member.dto.response;

import com.jeju_campking.campking.member.entity.Gender;
import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LoginUserResponseDTO {

    // 현재 로그인한 사람의 화면에 보여줄 일부 정보
    private String memberEmail;
    private String memberName;
    private String memberNickname;
    private Gender memberGender;
    private String profile;
}
