package com.jeju_campking.campking.member.repository;

import com.jeju_campking.campking.member.dto.request.AutoLoginDTO;
import com.jeju_campking.campking.member.dto.request.MemberLoginRequestDTO;
import com.jeju_campking.campking.member.dto.request.MemberSignRequestDTO;
import com.jeju_campking.campking.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MemberMapper {

    // TODO : 회원가입 기능, 로그인 기능
    boolean sign(Member member);

    Member login(MemberLoginRequestDTO dto);

    int isDuplicate(
            @Param("type") String type
            , @Param("keyword") String keyword);

    Member findMember(String memberEmail);

    void saveAutoLogin(AutoLoginDTO dto);

    Member findMemberByCookie(String sessionId);

}