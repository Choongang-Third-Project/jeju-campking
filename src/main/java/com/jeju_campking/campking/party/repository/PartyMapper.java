package com.jeju_campking.campking.party.repository;


import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PartyMapper {
    // 정렬이 가능한 전체 조회
    List<PartyAllListResponseDTO> findAllBySort(@Param("type") String type, @Param("sort") String sort);
}
