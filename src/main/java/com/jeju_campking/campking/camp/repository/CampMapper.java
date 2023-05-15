package com.jeju_campking.campking.camp.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CampMapper {

    //캠프장 전체 보여주기
    List<Camp> findAll();

    //키워드로  검색해서 보여주기
    List<Camp> findByKeyword(String keyword);

    //보유한 캠프장 수 보여주기
    int allCount();

    // 캠프타입별 캠프장 갯수 보여주기
    //TODO: tb_camp에 데이터 확인 필요 (camp_type_caravan컬럼 - 글램핑, camp_type_glamping컬럼 - 카라반)
    int getCampCountByType(String type);

}
