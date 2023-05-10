package com.jeju_campking.campking.camp.repository;

import com.jeju_campking.campking.camp.entity.Camp;
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
    }

    @Test
    @DisplayName("전체 조회 성공할거다")
    void findAllTes88t(){
        //when
        List<Camp> campList = campMapper.findAll();
        System.out.println("campList = " + campList);
    }
}