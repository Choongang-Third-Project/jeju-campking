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
    private String memberId;
    private String memberPassword;
    private String memberName;
    private String memberPhone;
    private String memberEmail;
    private Gender memberGender;
    private String memberNickname;
    private int memberAge;
    private LocalDateTime memberJoinDate;
}
