package com.jeju_campking.campking.consumable.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import com.jeju_campking.campking.consumable.entity.Consumable;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import java.util.List;

@SpringBootTest
class ConsumableMapperTest {
    @Autowired
    ConsumableMapper consumableMapper;

    @Test
    @DisplayName("소모품 전체 조회 성공할거다")
    void findAllTest(){
        //when
        List<Consumable> consumableList = consumableMapper.findAll();
        System.out.println("consumableList = " + consumableList);

        //then
    }

    @Test
    @DisplayName("키워드로 소모품 검색에 성공 할것이다.")
    void findByKeywordTest(){
        //given
        String keyword="물티슈";

        //when
        List<Consumable> byKeyword = consumableMapper.findByKeyword(keyword);
        System.out.println("byKeyword = " + byKeyword);
        //then

    }


    @Test
    @DisplayName("전체 갯수 조회에 성공 할것이다.")
    void countTest(){
        //given

        //when
        int allCount = consumableMapper.allCount();
        System.out.println("allCount = " + allCount);

        //then
        org.assertj.core.api.Assertions.assertThat(10).isEqualTo(allCount);
    }






}