package com.jeju_campking.campking.camp.entity;

import lombok.*;

/*
* create table camp_tbl (
    camp_number int(10) auto_increment primary key,
    camp_address VARCHAR(200) NOT NULL,
    camp_detail VARCHAR(500) NOT NULL,
    camp_type_normal CHAR(1),
    camp_type_car CHAR(1),
    camp_type_caravan CHAR(1),
    camp_type_glamping CHAR(1)
);
* */
//TODO: 캠프장 엔티티
@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Camp {
    Long campNumber;
    String campAddress;
    String campDetail;
    String campTypeNormal;
    String campTypeCar;
    String campTypeCaravan;
    String campTypeGlamping;
}
