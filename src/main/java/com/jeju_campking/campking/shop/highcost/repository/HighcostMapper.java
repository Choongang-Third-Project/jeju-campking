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
            "highcost_img\n" +
            "FROM tb_highcost\n" +
            ";")
    List<HighcostResponseDTO> findAll();

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_img\n" +
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
            "highcost_img\n" +
            "from tb_highcost\n" +
            "where highcost_category = #{category}")
    List<HighcostResponseDTO> findByCategory(String category);

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_img\n" +
            "from tb_highcost\n" +
            "order by highcost_price asc\n" +
            ";")
    List<HighcostResponseDTO> sortedByPriceAsc(int priceNumber);

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_img\n" +
            "from tb_highcost\n" +
            "order by highcost_price desc\n" +
            ";")
    List<HighcostResponseDTO> sortedByPriceDesc(int priceNumber);

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_img\n" +
            "from tb_highcost\n" +
            "order by highcost_price desc\n" +
            ";")
    List<HighcostResponseDTO> sortedByPopularAsc(int popularNumber);

    @Select("select\n" +
            "highcost_idx,\n" +
            "highcost_name,\n" +
            "highcost_price,\n" +
            "highcost_info,\n" +
            "highcost_category,\n" +
            "highcost_img\n" +
            "from tb_highcost\n" +
            "order by highcost_price desc\n" +
            ";")
    List<HighcostResponseDTO> sortedByPopularDesc(int popularNumber);
}
