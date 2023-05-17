package com.jeju_campking.campking.mypage.service;

import com.jeju_campking.campking.member.entity.Member;
import com.jeju_campking.campking.mypage.repository.MypageUpdateMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class MypageUpdateService {

    private final MypageUpdateMapper mypageUpdateMapper;

    public Member findMember(Long memberNumber) {
        log.info("MypageService findMember : {}", memberNumber);
        return mypageUpdateMapper.findMember(memberNumber);
    }

    public boolean updateMember(Long memberNumber) {
        log.info("MypageService updateMember : {}", memberNumber);
        return mypageUpdateMapper.updateMember(memberNumber);
    }

}
