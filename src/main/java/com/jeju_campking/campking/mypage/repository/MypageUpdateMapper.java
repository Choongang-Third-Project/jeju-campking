package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MypageUpdateMapper {

    Member findMember(Long memberNumber);
    boolean updateMember(Long memberNumber);

}
