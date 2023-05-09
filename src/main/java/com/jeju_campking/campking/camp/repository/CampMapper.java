package com.jeju_campking.campking.camp.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

//TODO: 캠프장 조회 ,
public interface CampMapper {

    //캠프장 전체 보여주기
    List<Camp> findALL()



}
