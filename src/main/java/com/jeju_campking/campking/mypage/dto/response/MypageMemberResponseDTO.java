package com.jeju_campking.campking.mypage.dto.response;

import com.jeju_campking.campking.member.entity.Member;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypageMemberResponseDTO {
    private Long memberNumber;
    private String memberNickname;
    // TODO : 회원의 프로필 사진, 회원등급(일반회원 or 관리자) 추가해야합니다.

    public MypageMemberResponseDTO(Member member) {
        this.memberNumber = member.getMemberNumber();
        this.memberNickname = member.getMemberNickname();
    }
}
