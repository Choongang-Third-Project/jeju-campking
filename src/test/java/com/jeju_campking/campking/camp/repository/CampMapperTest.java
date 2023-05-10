package com.jeju_campking.campking.camp.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class CampMapperTest {

    @Autowired
    CampMapper campMapper;

    @Test
    @DisplayName("전체 조회 성공할거다")
    void findAllTest(){
        //when
        List<Camp> campList = campMapper.findAll();
        System.out.println("campList = " + campList);

        //then
    }

    @Test
    @DisplayName("키워드로 검색에 성공 할것이다.")
    void findByKeywordTest(){
        //given
        String keyword="카라반";

        //when
        List<Camp> byKeyword = campMapper.findByKeyword(keyword);
        System.out.println("byKeyword = " + byKeyword);

        //then

    }

    @Test
    @DisplayName("키워드로 검색에 성공 할것이다.")
    void countTest(){
        //given

        //when
        int byKeyword = campMapper.allCount();
        System.out.println("byKeyword = " + byKeyword);

        //then
        org.assertj.core.api.Assertions.assertThat(4).isEqualTo(byKeyword);

    }


//    @Test
//    @DisplayName("전체 조회 성공할거다")
//    void findAllTes88t(){
//        //when
//        List<Camp> campList = campMapper.findAll();
//        System.out.println("campList = " + campList);
//    }
}