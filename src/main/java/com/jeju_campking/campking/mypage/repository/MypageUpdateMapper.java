package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.dto.request.MypageUpdateMemberRequestDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MypageUpdateMapper {

    Member findMember(Long memberNumber);
    boolean updateMember(Member dto);

    int isDuplicate(
            @Param("type") String type
            , @Param("keyword") String keyword);
}
