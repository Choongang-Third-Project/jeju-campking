CREATE TABLE TB_CAMP (
    camp_number int(10) auto_increment primary key,
    camp_address VARCHAR(200) NOT NULL,
    camp_detail VARCHAR(500) NOT NULL,
    camp_type_normal CHAR(1),
    camp_type_car CHAR(1),
    camp_type_caravan CHAR(1),
    camp_type_glamping CHAR(1)
);
