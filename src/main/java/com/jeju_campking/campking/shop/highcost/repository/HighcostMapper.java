package com.jeju_campking.campking.shop.highcost.repository;

import com.jeju_campking.campking.shop.highcost.dto.response.HighcostResponseDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface HighcostMapper {

    @Select("SELECT\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_wish\n" +
            "FROM tb_highcost\n" +
            ";")
    List<HighcostResponseDTO> findAll();

    @Select("")
    HighcostResponseDTO findOne(Long highcostInx);
}
