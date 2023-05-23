package com.jeju_campking.campking.shop.food.repository;

import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FoodMapper {


    @Select("select \n" +
            "f.food_idx,\n" +
            "f.food_name,\n" +
            "f.food_price,\n" +
            "f.food_info,\n" +
            "f.food_category,\n" +
            "f.food_wish,\n" +
            "p.food_img,\n" +
            "r.member_number\n" +
            "from tb_food f\n" +
            "left join tb_food_category p using(food_idx)\n" +
            "left join tb_food_wish r using(food_idx);")
    public List<FoodResponseDTO> findAll();

}
