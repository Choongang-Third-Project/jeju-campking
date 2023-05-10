package com.jeju_campking.campking.member.dto.request;

import com.jeju_campking.campking.member.entity.Gender;
import com.jeju_campking.campking.member.entity.Member;
import lombok.*;

import javax.validation.constraints.*;
import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberSignRequestDTO {
    @NotBlank(message = "비밀번호는 필수 값입니다.")
    @Size(min = 8, max = 15)
    private String memberPassword;
    @NotBlank(message = "이름은 필수 값입니다.")
    private String memberName;
    @NotBlank(message = "핸드폰 번호는 필수 값입니다.")
    @Pattern(regexp = "^01(?:0|1[6-9])[.-]?(\\d{3}|\\d{4})[.-]?(\\d{4})$", message = "번호 양식을 지켜주세요.")
    private String memberPhone;
    @NotBlank(message = "이메일은 필수 값입니다.")
    @Email(message = "이메일 양식을 지켜주세요.")
    private String memberEmail;
    @NotBlank(message = "성별은 필수 값입니다.")
    private String memberGender;
    @NotBlank(message = "별명은 필수 값입니다.")
    private String memberNickname;
    @NotNull(message = "나이는 필수 값입니다.")
    @Min(value = 19, message = "19세 이상만 가능합니다.")
    private Integer memberAge;

    public Member toEntity() {
        return Member.builder()
                .memberPassword(this.memberPassword)
                .memberName(this.memberName)
                .memberPhone(this.memberPhone)
                .memberEmail(this.memberEmail)
                .memberGender(Gender.valueOf(this.memberGender))
                .memberAge(this.memberAge)
                .memberJoinDate(LocalDateTime.now())
                .build();
    }

}
