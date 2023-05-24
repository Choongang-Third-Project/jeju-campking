package com.jeju_campking.campking.shop.event.repository;

import com.jeju_campking.campking.shop.event.dto.EventResponseDTO;
import com.jeju_campking.campking.shop.event.entity.Event;
import com.jeju_campking.campking.shop.event.repository.EventMapper;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
class EventMapperTest {

    @Autowired
    EventMapper eventMapper;

    @Test
    @DisplayName("이벤트아이템 10개를 등록해야 한다")
    void bulkTest() {
        //given
        for(int i = 1; i<=10 ; i++) {
            Event event = Event.builder()
                    .eventName("기타아이템" + i)
                    .eventPrice(2000L)
                    .eventInfo("물건정보" + i)
                    .eventCategory("기타")
                    .build();
            eventMapper.insertEvent(event);
        }
    }

    @Test
    @DisplayName("이벤트아이템 전체를 조회해야한다")
    void findAll() {
        List<Event> all = eventMapper.findAll();
        for (Event event : all) {
            System.out.println(event);
        }
    }

    @Test
    @DisplayName("카테고리별로 상품을 조회해야한다. ")
    void getEventsByCategoryTest() {
        // given
            String eventCategory = "생일파티";
        // when
        List<Event> eventList = eventMapper.getEventsByCategory(eventCategory);
        // then
        assertEquals(10, eventList.size());
    }

    @Test
    @DisplayName("idx값으로 상품하나를 조회할 수 있어야한다")
    void findOneTest() {
        // given
        Long eventIdx = 1000L;
        // when
        List<Event> one = eventMapper.findOne(eventIdx);
        // then
        System.out.println("one =" + one);
    }





}