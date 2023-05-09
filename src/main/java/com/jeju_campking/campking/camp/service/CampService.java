package com.jeju_campking.campking.camp.service;

import com.jeju_campking.campking.camp.dto.response.CampResponseDTO;
import com.jeju_campking.campking.camp.entity.Camp;
import com.jeju_campking.campking.camp.repository.CampMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


import java.util.List;

import static java.util.stream.Collectors.toList;

@Service
@RequiredArgsConstructor
public class CampService {

    private final CampMapper campRepository;




    public List<CampResponseDTO> getAllList() {
        return campRepository.findAll()
                .stream()
                .map((Camp t) -> new CampResponseDTO(campNUmber, campAddress, campDetail, campTypeNormal, campTypeCar, campTypeCaravan, campTypeGlamping))
                .collect(toList())
                ;
    }


    public CampResponseDTO getDetail(String address) {


    }

    public CampResponseDTO getList(String address) {
    }
}
