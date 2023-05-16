package com.jeju_campking.campking.party.repository;


import com.jeju_campking.campking.party.dto.request.PartyModifyRequestDTO;
import com.jeju_campking.campking.party.dto.request.PartySaveRequestDTO;
import com.jeju_campking.campking.party.dto.response.PartyAllListResponseDTO;
import com.jeju_campking.campking.party.entity.Party;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PartyMapper {
    // 정렬이 가능한 전체 조회
    List<PartyAllListResponseDTO> findAllBySort(@Param("type") String type, @Param("sort") String sort);

    Long findMemberIdByPartyNumber(Long campNumber);

    boolean save(PartySaveRequestDTO dto);

    boolean deleteByNumber(Long partyNumber);

    boolean modify(PartyModifyRequestDTO dto);
}
