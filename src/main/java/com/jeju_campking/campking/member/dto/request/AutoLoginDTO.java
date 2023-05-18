package com.jeju_campking.campking.member.dto.request;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AutoLoginDTO {
    private String sessionId;
    private LocalDateTime memberCookieDate;
    private String account;
}