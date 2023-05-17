package com.jeju_campking.campking.member.entity;

// TODO : 멤버 Entity

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class Member {
    private Long memberNumber;
    private String memberEmail;
    private String memberPassword;
    private String memberName;
    private String memberNickname;
    private String memberPhone;
    private Gender memberGender;
    private int memberAge;
    private LocalDateTime memberJoinDate;

    private String profileImage;
}
