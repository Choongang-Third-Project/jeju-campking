package com.jeju_campking.campking.shop.highcost.repository;

import com.jeju_campking.campking.shop.food.entity.Food;
import com.jeju_campking.campking.shop.highcost.dto.response.HighcostResponseDTO;
import com.jeju_campking.campking.shop.highcost.entity.Highcost;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface HighcostMapper {

    @Insert("insert into tb_highcost " +
            "(highcost_name, " +
            "highcost_price, " +
            "highcost_info, " +
            "highcost_category, " +
            "highcost_img)\n" +
            "values " +
            "(#{highcost.highcostName}, " +
            "#{highcost.highcostPrice}, " +
            "#{highcost.highcostInfo}, " +
            "#{highcost.highcostCategory}, " +
            "#{highcost.highcostImg})\t")
    int insertHighcost(Highcost highcost);

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
