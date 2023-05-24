package com.jeju_campking.campking.consumable.repository;


import com.jeju_campking.campking.consumable.entity.Consumable;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/*
-- 소모품 테이블 생성
create table TB_CONSUMABLE (
	consumable_idx INT(10) AUTO_INCREMENT,
	consumable_name VARCHAR(20) NOT NULL,
	consumable_info VARCHAR(200) NOT NULL,
	consumable_category VARCHAR(30),
	consumable_wish VARCHAR(20)
	PRIMARY KEY(consumable_idx),
	FOREIGN KEY (consumable_category) REFERENCES TB_CATEGORY(consumable_category),
	FOREIGN KEY (consumable_wish) REFERENCES TB_WISH(consumable_wish)
);

-- 소모품 카고테고리 테이블 생
CREATE table TB_CATEGORY (
	consumable_category VARCHAR(10),
	consumable_img VARCHAR(2000) NOT NULLm
	consumable_idx INT(10),
	PRIMARY KEY(consumable_category),
	FOREIGN KEY (consumable_idx) REFERENCES TB_CONSUMABLE(consumable_idx)
);

-- 소모품 찜목 테이블 생
CREATE table TB_WISH(
	consumable_wish INT(10) AUTO_INCREMENT,
	consumable_idx INT(10),
	member_number INT(10),
	PRIMARY KEY(consumable_wish),
	FOREIGN KEY (consumable_idx) REFERENCES TB_CONSUMABLE(consumable_idx),
	FOREIGN KEY (member_number) REFERENCES TB_MEMBER(member_number)
);

*/
// TODO: 소모품 mapper
public interface ConsumableMapper {
    //전체 조회 기능
    @Select(
        "SELECT * FROM TB_CONSUMABLE\n"
    )
    List<Consumable> findAll();

    //키워드 검색해서 보여주기
    @Select(
            "SELECT \n"+
                    "FROM TB_CONSUMABLE\n" +
                    "WHERE consumable_name LIKE %#{keyword}%"
    )
    List<Consumable> findByKeyword(String keyword);

    //보유한 소모품 수량 보여주기
    @Select(
            "SELECT COUNT(*) FROM TB_CONSIMABLE"
    )
    int allCount();

    //카테고리별 소모품 보여주기
    @Select(
            "SELECT * FROM TB_CONSUMABLE" +
                    "WHERE consumable_category = #{consumableCatagory}"
    )
    List<Consumable> findByCategory(String category);

    //가격순으로 조회 하기
    @Select(
            "SELECT * FROM TB_CONSUMABLE\n" +
                    "WHERE consumable_price\n"+
                    "ORDER BY DESC"
    )
    List<Consumable> priceList();

    //찜갯수 별로 보여주기
    @Select(
            "SELECT * FROM TB_CONSUMABLE\n" +
                    "WHERE consumable_wish = \n" +
                    "SELECT consumable_wish FROM TB_WISH \n" +
                    "GROUP BY consumable_idx \n"+
                    "HAVING count(consumable_idx) \n" +
                    "ORDER BY DESC"
    )
    List<Consumable> likeList();



}
