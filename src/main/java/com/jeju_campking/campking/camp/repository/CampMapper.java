package com.jeju_campking.campking.camp.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
//TODO: 캠프장 조회
public interface CampMapper {

    //캠프장 전체 보여주기
    List<Camp> findAll();

    //키워드로  검색해서 보여주기
    List<Camp> findByKeyword(String keyword);

    //보유한 캠프장 수 보여주기
    int allCount();

}
