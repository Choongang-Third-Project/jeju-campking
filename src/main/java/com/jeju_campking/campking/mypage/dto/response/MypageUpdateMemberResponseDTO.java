package com.jeju_campking.campking.mypage.dto.response;

import com.jeju_campking.campking.member.entity.Gender;
import com.jeju_campking.campking.member.entity.Member;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypageUpdateMemberResponseDTO {
    private Long memberNumber;
    private String memberEmail;
    private String memberPassword;
    private String memberName;
    private String memberNickname;
    private String memberPhone;
    private Gender memberGender;
    private int memberAge;

    private String profileImage;

    // Member entity 를 DTO 로 변경, 전화번호 양식 변경
    public MypageUpdateMemberResponseDTO(Member member) {
        this.memberNumber = member.getMemberNumber();
        this.memberEmail = member.getMemberEmail();
        this.memberPassword = member.getMemberPassword();
        this.memberName = member.getMemberName();
        this.memberNickname = member.getMemberNickname();
        this.memberPhone = member.getMemberPhone();
        this.memberGender = member.getMemberGender();
        this.memberAge = member.getMemberAge();
        this.profileImage = member.getProfileImage();
    }

    // 휴대전화번호를 하이픈이 포함된 형식으로 변환
//    private String getFormattedPhoneNumber(String phone) {
//        if (phone == null || phone.isEmpty()) {
//            return "";
//        }
//        // 하이픈 추가 로직
//        // 예: 01012345678 -> 010-1234-5678
//        StringBuilder formattedNumber = new StringBuilder();
//        formattedNumber.append(phone.substring(0, 3));
//        formattedNumber.append("-");
//        if (phone.length() == 11) {
//            formattedNumber.append(phone.substring(3, 7));
//            formattedNumber.append("-");
//            formattedNumber.append(phone.substring(7));
//        } else {
//            formattedNumber.append(phone.substring(3, 6));
//            formattedNumber.append("-");
//            formattedNumber.append(phone.substring(6));
//        }
//
//        return formattedNumber.toString();
//    }

}
