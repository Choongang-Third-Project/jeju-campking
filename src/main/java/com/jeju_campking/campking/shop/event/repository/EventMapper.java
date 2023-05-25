package com.jeju_campking.campking.shop.event.repository;

import com.jeju_campking.campking.shop.event.entity.Event;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


@Mapper
public interface EventMapper {

    // 이벤트장비 등록 (벌크테스트용)
    @Insert("insert into tb_event\n" +
            "(event_name, event_price, event_info, event_category, event_img)\n" +
            "values\n" +
            "(#{event.eventName},#{event.eventPrice},#{event.eventInfo},#{event.eventCategory},#{event.eventImg})")
    int insertEvent(@Param("event")Event event);


    // 이벤트장비 전체조회
    @Select("select \n" +
            "event_idx, event_name, event_price, event_info, event_category, event_img\n" +
            "from tb_event")
    List<Event> findAll();


    // 이벤트장비 가격순 조회 (비싼 가격부터)
    @Select("SELECT \n" +
            "event_idx, event_name, event_price, event_info, event_category, event_img\n" +
            "FROM tb_event ORDER BY event_price DESC")
    List<Event> findByPriceDesc(int priceNum);

    // 이벤트장비 가격순 조회 (싼 가격부터)
    @Select("SELECT \n" +
            "event_idx, event_name, event_price, event_info, event_category, event_img\n" +
            "FROM tb_event ORDER BY event_price ASC")
    List<Event> findByPriceAsc(int priceNum);


    // 이벤트장비 카테고리별 조회
    @Select("SELECT event_idx, event_name, event_price, event_info, event_category, event_img " +
            "FROM tb_event " +
            "WHERE event_category = #{eventCategory}")
    List<Event> findByCategory(String eventCategory);




    // 이벤트장비 개별조회
    @Select("select\n" +
            "event_idx, event_name, event_price, event_info, event_category, event_img\n" +
            "from tb_event \n" +
            "where event_idx = #{eventIdx}")
    List<Event> findOne(Long eventIdx);


    // 카테고리별로 가격순 조회
//    @Select("select\n" +
//            "event_idx, event_name, event_price, event_info, event_category, event_img\n" +
//            "FROM tb_event \n" +
//            "WHERE event_category = #{eventCategory} \n" +
//            "ORDER BY event_price DESC")
//    List<Event> findByCategoryAndPriceDesc(String eventCategory);



}