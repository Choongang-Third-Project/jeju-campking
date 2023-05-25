package com.jeju_campking.campking.shop.food.repository;

import com.jeju_campking.campking.shop.food.dto.response.FoodResponseDTO;
import com.jeju_campking.campking.shop.food.entity.Food;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface FoodMapper {


    @Select("select \n" +
            "\tfood_idx,\n" +
            "\tfood_name,\n" +
            "\tfood_price,\n" +
            "\tfood_info,\n" +
            "\tfood_category,\n" +
            "\tfood_img\n" +
            "from tb_food;"
            )
    public List<Food> findAll();



    @Select("  select \n" +
            "\tfood_idx,\n" +
            "\tfood_name,\n" +
            "\tfood_price,\n" +
            "\tfood_info,\n" +
            "\tfood_category,\n" +
            "\tfood_img\n" +
            "  from tb_food\n" +
            "  order by food_price desc;\n" +
            " ")
    public List<Food> priceDesc();

    @Select("select \n" +
            "\tfood_idx,\n" +
            "\tfood_name,\n" +
            "\tfood_price,\n" +
            "\tfood_info,\n" +
            "\tfood_category,\n" +
            "\tfood_img\n" +
            "  from tb_food\n" +
            "  order by food_price asc;")
    public List<Food> priceAsc();

    @Select("select \n" +
            "\tfood_idx,\n" +
            "\tfood_name,\n" +
            "\tfood_price,\n" +
            "\tfood_info,\n" +
            "\tfood_category,\n" +
            "\tfood_img \n" +
            "from tb_food\n" +
            "where 1=1 \n" +
            "\tand food_category = #{category}\n")
    public List<Food> category(@Param("category")String category);







    @Insert("insert into tb_food " +
            "(food_name, " +
            "food_price, " +
            "food_info, " +
            "food_category, " +
            "food_img)\n" +
            "\t\tvalues " +
            "(#{food.foodName}, " +
            "#{food.foodPrice}, " +
            "#{food.foodInfo}, " +
            "#{food.foodCategory}, " +
            "#{food.foodImg})\t")
    public int insert(@Param("food") Food food);




}
