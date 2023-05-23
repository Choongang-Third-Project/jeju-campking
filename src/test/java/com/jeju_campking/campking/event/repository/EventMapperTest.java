package com.jeju_campking.campking.event.repository;

import com.jeju_campking.campking.shop.event.entity.Event;
import com.jeju_campking.campking.shop.event.repository.EventMapper;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class EventMapperTest {

    @Autowired
    EventMapper eventMapper;

    @Test
    @DisplayName("이벤트아이템 10개를 등록해야 한다")
    void bulkTest() {
        //given
        for(int i = 1000; i<=10 ; i++) {
            Event event = Event.builder()
                    .eventIdx((long) i)
                    .eventName("생일파티아이템" + i)
                    .eventPrice(3000L)
                    .eventInfo("물건정보" + i)
                    .eventCategory("생일파티")
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





}