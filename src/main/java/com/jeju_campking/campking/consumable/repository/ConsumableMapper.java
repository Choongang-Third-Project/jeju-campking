package com.jeju_campking.campking.consumable.repository;


import com.jeju_campking.campking.consumable.entity.Consumable;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/*
-- 소모품 테이블 생성
create table TB_CONSUMABLE (
	consumable_idx INT(10) AUTO_INCREMENT,
	consumable_name VARCHAR(20) NOT NULL,
	consumable_price INT(10) NOT NULL,
	consumable_info VARCHAR(200) NOT NULL,
	consumable_category VARCHAR(30) NOT NULL,
	consumable_img VARCHAR(2000) NOT NULL,
	PRIMARY KEY(consumable_idx)
);

-- 소모품 찜목 테이블 생
CREATE table TB_CONSUMABLE_WISH (
	consumable_wish INT(10) NOT NULL AUTO_INCREMENT,
	consumable_idx INT(10) NOT NULL,
	member_number INT(10) NOT NULL,
	is_like VARCHAR(1) NOT NULL DEFAULT 'N',
	PRIMARY KEY(consumable_wish)
);
*/

// TODO: 소모품 mapper
@Mapper
public interface ConsumableMapper {

    // 소모품 등록 (벌크테스트용)
    @Insert("insert into TB_CONSUMABLE\n" +
            "(consumable_name,consumable_price,consumable_info,consumable_category,consumable_img)\n" +
            "values\n" +
            "(#{consumable.consumableName},#{consumable.consumablePrice},#{consumable.consumableInfo},#{consumable.consumableCategory},#{consumable.consumableImg})")
    int insertConsumable(@Param("consumable")Consumable consumable);



    //전체 조회 기능
    @Select(
        "SELECT \n" +
                "consumable_idx,consumable_name,consumable_price,consumable_info,consumable_category,consumable_img \n" +
                "FROM TB_CONSUMABLE\n"
    )
    List<Consumable> findAll();

    //키워드 검색해서 조회하기
    @Select(
            "SELECT \n"+
                    "consumable_idx,consumable_name,consumable_price,consumable_info,consumable_category,consumable_img \n" +
                    "FROM TB_CONSUMABLE\n" +
                    "WHERE consumable_name LIKE %#{keyword}%"
    )
    List<Consumable> findByKeyword(String keyword);

    //보유한 소모품 수량 보여주기
    @Select(
            "SELECT COUNT(*) FROM TB_CONSIMABLE"
    )
    int allCount();

    //카테고리별 소모품 조회하기
    @Select(
            "SELECT \n" +
                    "consumable_idx,consumable_name,consumable_price,consumable_info,consumable_category,consumable_img \n" +
                    " FROM TB_CONSUMABLE" +
                    "WHERE consumable_category = #{consumableCatagory}"
    )
    List<Consumable> findByCategory(String category);

    //가격순으로 조회 하기(높은순)
    @Select(
            "SELECT \n" +
                    "consumable_idx,consumable_name,consumable_price,consumable_info,consumable_category,consumable_img \n" +
                    "FROM TB_CONSUMABLE\n"+
                    "ORDER BY consumable_price DESC"
    )
    List<Consumable> priceHighList(int priceNum);

    //가격순으로 조회 하기(낮은순)
    @Select(
            "SELECT \n" +
                    "consumable_idx,consumable_name,consumable_price,consumable_info,consumable_category,consumable_img \n" +
                    "FROM TB_CONSUMABLE\n"+
                    "ORDER BY consumable_price ASC"
    )
    List<Consumable> priceLowList(int priceNum);


    // 이벤트장비 개별조회
    @Select("select\n" +
            "consumable_idx,consumable_name,consumable_price,consumable_info,consumable_category,consumable_img \n" +
            "from TB_CONSUMABLE \n" +
            "where consumable_idx = #{consumableIdx}")
    List<Consumable> findOne(Long consumableidx);



    //찜갯수(인기) 별로 보여주기
//    @Select(
//            "SELECT * FROM TB_CONSUMABLE\n" +
//                    "WHERE consumable_wish = \n" +
//                    "SELECT consumable_wish FROM TB_WISH \n" +
//                    "GROUP BY consumable_idx \n"+
//                    "HAVING count(consumable_idx) \n" +
//                    "ORDER BY DESC"
//    )
//    List<Consumable> likeList();



}
