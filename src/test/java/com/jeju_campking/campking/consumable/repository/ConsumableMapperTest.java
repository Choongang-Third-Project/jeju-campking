package com.jeju_campking.campking.consumable.repository;

import com.jeju_campking.campking.camp.entity.Camp;
import com.jeju_campking.campking.consumable.entity.Consumable;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import java.util.List;

import static org.hibernate.validator.internal.util.Contracts.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

@SpringBootTest
class ConsumableMapperTest {
    @Autowired
    ConsumableMapper consumableMapper;

//    // 더미데이터 생성!
//    @Test
//    @DisplayName("더미데이터 넣기")
//    void dummy() {
//
//        String[] category = {"토치", "장작", "랜턴", "물티슈"};
//        String[] name = {"다타토치", "편백나무", "불빛", "깨끗티슈"};
//        String[] info = {"불이야~~<br>불조심", "편백나무는<br>냄새가 좋아용","밝아용밝아용<br>밝습니다" ,"물티슈로<br>깨끗하게" };
//        String[] img = {"/assets/shop/consumable/torch.jpeg"
//                , "/assets/shop/consumable/wood.jpeg"
//                , "/assets/shop/consumable/lamp.jpeg"
//                , "/assets/shop/consumable/watertisu.jpeg"
//        };
//
//        Long[] price = {5000L, 3000L, 10000L, 15000L};
//
//        for (int i = 0; i < 50; i++) {
//            int index = (int) (Math.random() * 4); // 0 1 2 3
//
//            consumableMapper.insertConsumable(Consumable.builder()
//                    .consumableName(name[index] + i)
//                    .consumablePrice((int) (Math.random() * 5000 + price[index]))
//                    .consumableInfo(info[index])
//                    .consumableCatagory(category[index])
//                    .consumableImg(img[index])
//                    .build());
//        }
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


//    // 이벤트장비 전체조회
//    @Test
//    @DisplayName("이벤트아이템 전체를 조회해야한다")
//    void findAllTest() {
//        List<Consumable> all = consumableMapper.findAll();
//        for (Consumable consumable : all) {
//            System.out.println(consumable);
//        }
//    }


//    // 이벤트장비 가격순 조회 (내림차순)
//    @Test
//    @DisplayName("이벤트 장비 가격을 내림차순으로 조회할수 있다")
//    public void findindByPriceDescTest() {
//        // given
//        int priceNum = 1;
//        // when
//        List<Consumable> eventList = consumableMapper.priceHighList(priceNum);
//        // then
//        assertNotNull(eventList);
//        assertFalse(eventList.isEmpty());
//        for (Consumable consumable : eventList) {
//            System.out.println(consumable);
//        }
//    }

//    // 이벤트장비 가격순 조회 (오름차순)
//    @Test
//    @DisplayName("이벤트 장비 가격을 오름차순으로 조회할수 있다")
//    public void findindByPriceAscTest() {
//        // given
//        int priceNum = 2;
//        // when
//        List<Consumable> eventList = ConsumableMapper.priceLowList(priceNum);
//        // when
//        assertNotNull(eventList);
//        assertFalse(eventList.isEmpty());
//        for (Consumable consumable : eventList) {
//            System.out.println(consumable);
//        }
//    }

    // 카테고리별로 가격순 조회
//    @Test
//    @DisplayName("카테고리별로 가격순으로 조회할 수 있다")
//    void findByCategoryAndPriceDescTest() {
//        // given
//        String eventCategory = "어버이날";
//        // when
//        List<Event> eventList = eventMapper.findByCategoryAndPriceDesc(eventCategory);
//        // then
//        assertEquals(40000, eventList.get(0).getEventPrice());
//    }





//    // 이벤트장비 카테고리별 조회
//    @Test
//    @DisplayName("카테고리별로 상품을 조회해야한다. ")
//    void findByCategoryTest() {
//        // given
//        String Category = "장작";
//        // when
//        List<Consumable> eventList = consumableMapper.findByCategory(Category);
//        // then
//        assertEquals(10, eventList.size());
//    }


    // 이벤트장비 개별조회
//    @Test
//    @DisplayName("idx값으로 상품하나를 조회할 수 있어야한다")
//    void findOneTest() {
//        // given
//        Long eventIdx = 1000L;
//        // when
//        List<Consumable> one = consumableMapper.findOne(eventIdx);
//        // then
//        System.out.println("one =" + one);
//        assertEquals("생파아이템1", one.get(0).getConsumableName());
//    }


//}