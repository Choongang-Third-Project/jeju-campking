package com.jeju_campking.campking.camp.service;

import com.jeju_campking.campking.camp.dto.response.CampTypeCountResponseDTO;
import com.jeju_campking.campking.camp.entity.Camp;
import com.jeju_campking.campking.camp.repository.CampMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;


import java.sql.SQLException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class CampService {

    private final CampMapper campMapper;

    public List<Camp> findAll() throws SQLException {

        List<Camp> list = campMapper.findAll();
        log.info("campService.getAllList.info {}", list);

        if (list.size() == 0) {
            log.warn("campService.getAllList.warn {}", list);
            throw new SQLException();
        }

        return list;
    }


    public List<Camp> findByKeyword(String keyword) throws SQLException {
        log.info("campService/findByKeyword : {}", keyword);

        List<Camp> list = campMapper.findByKeyword(keyword);

        log.info("campService.getAllList.info {}", list);

        return list;
    }


    //보유한 캠프장 수 보여주기
//    int allCount();

    public int allCount() {
        log.info("campService/allCount ");

        return campMapper.allCount();
    }




    public CampTypeCountResponseDTO getCampCount() {

        int totalCount = campMapper.allCount();
        int normalCount = campMapper.getCampCountByType("normal");
        int carCount = campMapper.getCampCountByType("car");
        int caravanCount = campMapper.getCampCountByType("caravan");
        int glampingCount = campMapper.getCampCountByType("glamping");

        CampTypeCountResponseDTO dto = CampTypeCountResponseDTO.builder()
                .totalCount(totalCount)
                .normalCount(normalCount)
                .carCount(carCount)
                .caravanCount(caravanCount)
                .glampingCount(glampingCount)
                .build();

        dto.calculatePercentages();
        return dto;
    }


    }


