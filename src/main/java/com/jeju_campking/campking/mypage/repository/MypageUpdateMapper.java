package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MypageUpdateMapper {

    Member findMember(Long memberNumber);
    boolean updateMember(Long memberNumber);

    int isDuplicate(
            @Param("type") String type
            , @Param("keyword") String keyword);
}
