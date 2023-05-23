package com.jeju_campking.campking.consumable.repository;

import com.jeju_campking.campking.consumable.entity.Consumable;

import java.util.List;

// TODO: 소모품 mapper
public interface ConsumableMapper {
    //전체 조회 기능
    List<Consumable> findAll();
    //키워드 검색해서 보여주기
    List<Consumable> findByKeyword(String keyword);

    //보유한 소모품 수량 보여주기
    int allCount();

    //카테고리별 소모품 보여주기
    List<Consumable>

    //가격순으로 조회 하기



}
