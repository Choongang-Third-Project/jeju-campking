package com.jeju_campking.campking.shop.event.repository;

import com.jeju_campking.campking.shop.event.entity.Event;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class EventMapperTest {

    @Autowired
    EventMapper eventMapper;


    // 더미데이터 생성!
    @Test
    @DisplayName("더미데이터 넣기")
    @Transactional
    void dummy() {

        String[] category = {"생일파티", "프로포즈", "어버이날", "기타파티용품"};
        String[] name = {"생일축하꼬깔", "프로포즈용현수막", "카네이션", "짱큰풍선"};
        String[] info = {"생일추카포카<br>필수템 꼬깔모자", "프로포즈<br>성공하세욤", "어버이의 은혜<br>비누카네이션", "대형풍선<br>시선강탈"};
        String[] img = {"/assets/shop/event/birthday.png"
                , "/assets/shop/event/propose.png"
                , "/assets/shop/event/parentsday.png"
                , "/assets/shop/event/balloon.png"
        };

        Long[] price = {5000L, 3000L, 10000L, 15000L};

        for (int i = 0; i < 50; i++) {
            int index = (int) (Math.random() * 4); // 0 1 2 3

            eventMapper.insertEvent(Event.builder()
                    .eventName(name[index] + i)
                    .eventPrice((long) (Math.random() * 5000 + price[index]))
                    .eventInfo(info[index])
                    .eventCategory(category[index])
                    .eventImg(img[index])
                    .build());
        }
    }






//    @Test
//    @DisplayName("이벤트아이템 10개를 등록해야 한다")
//    void bulkTest() {
//        //given
//        for(int i = 1; i<=10 ; i++) {
//            Event event = Event.builder()
//                    .eventName("기타아이템" + i)
//                    .eventPrice(1000L * i)
//                    .eventInfo("풍선" + i)
//                    .eventCategory("기타")
//                    .eventImg("/assets/shop/event/balloon.png")
//                    .build();
//            eventMapper.insertEvent(event);
//        }
//    }


    // 이벤트장비 전체조회
    @Test
    @DisplayName("이벤트아이템 전체를 조회해야한다")
    void findAll() {
        List<Event> all = eventMapper.findAll();
        for (Event event : all) {
            System.out.println(event);
        }
    }

    // 이벤트장비 가격순 조회
    @Test
    @DisplayName("이벤트 장비 가격순 조회할수 있다")
    void findByPriceDescTest() {
        // given
        // when
        List<Event> eventList = eventMapper.findByPriceDesc();
        // then
        for (Event event : eventList) {
            System.out.println(event);
        }
    }

    // 카테고리별로 가격순 조회
    @Test
    @DisplayName("카테고리별로 가격순으로 조회할 수 있다")
    void findByCategoryAndPriceDescTest() {
        // given
        String eventCategory = "어버이날";
        // when
        List<Event> eventList = eventMapper.findByCategoryAndPriceDesc(eventCategory);
        // then
        assertEquals(40000, eventList.get(0).getEventPrice());
    }





    // 이벤트장비 카테고리별 조회
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


    // 이벤트장비 개별조회
    @Test
    @DisplayName("idx값으로 상품하나를 조회할 수 있어야한다")
    void findOneTest() {
        // given
        Long eventIdx = 1000L;
        // when
        List<Event> one = eventMapper.findOne(eventIdx);
        // then
        System.out.println("one =" + one);
        assertEquals("생파아이템1", one.get(0).getEventName());
    }





}

