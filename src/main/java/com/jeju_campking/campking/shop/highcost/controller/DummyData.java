package com.jeju_campking.campking.shop.highcost.controller;

import java.util.Random;

public class DummyData {
    public static void main(String[] args) {

        String[] nameList = {"'짱텐트", "'침침낭", "'테이블블", "'스토부"};
        String[] infoList = {"'짱 좋은 텐트~ 방수탁월ㄷㄷ'", "'아주 좋은 침낭/매트~'", "'완전 비싼 테이블~'", "'성능 짱짱 스토브~'"};
        String[] categoryList = {"'텐트'", "'침낭/매트'", "'테이블'", "'스토브'"};
        String[] imageList = {"'/assets/shop/highcost/tent.jpg'",
                "'/assets/shop/highcost/mat.jpg'",
                "'/assets/shop/highcost/table.jpg'",
                "'/assets/shop/highcost/stove.jpg'"};
        Long[] priceList = {100000L, 200000L, 300000L, 400000L};
        Random random = new Random();

        System.out.println("INSERT INTO tb_highcost (" +
                "highcost_name, \n" +
                "highcost_price,\n" +
                "highcost_info,\n" +
                "highcost_category,\n" +
                "highcost_img)\n" +
                "VALUES ");
        for (int i = 1; i <= 50; i++) {
            int randomNum = random.nextInt(4); // 0,1,2,3 랜덤
            System.out.println("(" +
                    nameList[randomNum] + i + "', " +
                    priceList[randomNum] + ", " +
                    infoList[randomNum] + ", " +
                    categoryList[randomNum] + ", " +
                    imageList[randomNum] +
                    "),");
        }
    }
}
