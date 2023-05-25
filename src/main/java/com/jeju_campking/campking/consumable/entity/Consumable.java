package com.jeju_campking.campking.consumable.entity;


import lombok.*;
// TODO: 소모품 엔티티

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Consumable {

    /*
    CREATE table equip_consumable(
	consumable_number 	 INT(10) 	AUTO_INCREMENT,
    consumable_show     INT(10) ,
    consumable_discount  INT(20),
    consumable_price      INT(100)    NOT NULL,
    consumable_name     VARCHAR(20)    NOT NULL,
    consumable_explain    VARCHAR(200)     NOT NULL,
    consumable_count  INT(10)   NOT NULL ,
    consumable_catagory	  VARCHAR(50),
    PRIMARY KEY (consumable_number)
);
    */

    private int consumableIdx;
    private String consumableDiscount;
    private int consumablePrice;
    private String consumableName;
    private String consumableInfo;
    private int consumableCount;
    private String consumableCatagory;

}
