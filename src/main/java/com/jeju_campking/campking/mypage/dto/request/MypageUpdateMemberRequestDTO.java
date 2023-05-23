package com.jeju_campking.campking.mypage.dto.request;

import com.jeju_campking.campking.member.entity.Member;
import lombok.*;
import org.springframework.lang.Nullable;
import org.springframework.web.multipart.MultipartFile;

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
    @Nullable
    private MultipartFile profileImage;

    public Member toEntity() {
        return Member.builder()
                .memberNumber(this.memberNumber)
                .memberPassword(this.memberPassword)
                .memberNickname(this.memberNickname)
                .memberPhone(this.memberPhone)
                .profileImage(String.valueOf(this.profileImage))
                .build();
    }
}
