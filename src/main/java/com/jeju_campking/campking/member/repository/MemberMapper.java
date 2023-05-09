package com.jeju_campking.campking.member.repository;

import com.campking.member.dto.request.MemberLoginRequestDTO;
import com.campking.member.dto.request.MemberSignRequestDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    // TODO : 회원가입 기능, 로그인 기능
    boolean sign(MemberSignRequestDTO dto);

    boolean login(MemberLoginRequestDTO dto);
}
