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
            "\t(event_idx, event_name, event_price, event_info, event_category)\n" +
            "\tvalues\n" +
            "\t(#{eventIdx},#{eventName},#{eventPrice},#{eventInfo},#{eventCategory})")
    int insertEvent(@Param("event")Event event);


    @Select("select \n" +
            "event_idx, event_name, event_price, event_info, event_category, event_wish\n" +
            "from tb_event")
    List<Event> findAll();


    @Select("<script>" +
            "SELECT event_idx, event_name, event_price, event_info, event_category, event_wish " +
            "FROM tb_event " +
            "WHERE " +
            "<if test=\"category.equals('생일파티')\">" +
            "   event_category = '생일파티'" +
            "</if>" +
            "<if test=\"category.equals('프로포즈')\">" +
            "   event_category = '프로포즈'" +
            "</if>" +
            "<if test=\"category.equals('어버이날')\">" +
            "   event_category = '어버이날'" +
            "</if>" +
            "<if test=\"category.equals('기타')\">" +
            "   event_category = '기타'" +
            "</if>" +
            "</script>")
    List<Event> getEventsByCategory(String category);



}