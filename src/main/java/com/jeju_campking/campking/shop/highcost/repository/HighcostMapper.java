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

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_wish\n" +
            "from tb_highcost\n" +
            "where highcost_idx = #{highcostIdx}\n" +
            ";")
    HighcostResponseDTO findOne(Long highcostInx);

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_wish\n" +
            "from tb_highcost\n" +
            "where \n" +
            "<if test=\"#{category == 'tent'}\">\n" +
            "highcost_category = \"텐트\"\n" +
            "</if>\n" +
            "<if test=\"#{category == 'sleeping-back'}\">\n" +
            "highcost_category = \"침낭/매트\"\n" +
            "</if>\n" +
            "<if test=\"#{category == 'table'}\">\n" +
            "highcost_category = \"테이블\"\n" +
            "</if>\n" +
            "<if test=\"#{category == 'stove'}\">\n" +
            "highcost_category = \"스토브\"\n" +
            "</if>")
    List<HighcostResponseDTO> findByCategory(String category);
}
