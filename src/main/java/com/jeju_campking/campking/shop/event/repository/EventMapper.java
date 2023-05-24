package com.jeju_campking.campking.shop.event.repository;

import com.jeju_campking.campking.shop.event.entity.Event;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


@Mapper
public interface EventMapper {

    @Insert("insert into tb_event\n" +
            "(event_name, event_price, event_info, event_category)\n" +
            "values\n" +
            "(#{event.eventName},#{event.eventPrice},#{event.eventInfo},#{event.eventCategory})")
    int insertEvent(@Param("event")Event event);


    @Select("select \n" +
            "event_idx, event_name, event_price, event_info, event_category, event_wish\n" +
            "from tb_event")
    List<Event> findAll();


    @Select("SELECT event_idx, event_name, event_price, event_info, event_category, event_wish " +
            "FROM tb_event " +
            "WHERE event_category = #{eventCategory}")
    List<Event> getEventsByCategory(String eventCategory);


    @Select("select\n" +
            "event_idx, event_name, event_price, event_info, event_category, event_wish\n" +
            "from tb_event \n" +
            "where event_idx = #{eventIdx}")
    List<Event> findOne(Long eventIdx);



}