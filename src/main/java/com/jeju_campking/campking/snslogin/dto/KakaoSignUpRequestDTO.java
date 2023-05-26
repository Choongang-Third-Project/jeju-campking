package com.jeju_campking.campking.snslogin.dto;


import com.jeju_campking.campking.snslogin.entity.LoginMethod;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class KakaoSignUpRequestDTO {
//    @NotBlank
    private String account;
//    @NotBlank
    private String password;
//    @NotBlank
    private String name;
//    @NotBlank
//    @Email
    private String email;

    private MultipartFile profileImage;
    private LoginMethod loginMethod;
}
