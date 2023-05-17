package com.jeju_campking.campking.mypage.repository;

import com.jeju_campking.campking.member.entity.Member;

public interface MypageUpdateMapper {

    Member findMember(Long memberNumber);
    boolean updateMember(Long memberNumber);

}
