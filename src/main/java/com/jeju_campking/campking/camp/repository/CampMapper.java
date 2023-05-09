package com.jeju_campking.campking.camp.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

//TODO: 캠프장 조회
public interface CampMapper {

    //캠프장 전체 보여주기
    List<Camp> findAll();

    //타입으로 보여주기
    List<Camp> findByType(String type, String keyword);

    //보유한 캠프장 수 보여주기
    int allCount();

    //캠프장 하나 찾기
    Camp findOne(String address);





}
