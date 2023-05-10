CREATE TABLE tb_camp (
    camp_number int(10) auto_increment primary key,
    camp_address VARCHAR(200) NOT null unique key,
    camp_detail VARCHAR(2000) NOT NULL,
    camp_type_normal VARCHAR(20),
    camp_type_car VARCHAR(20),
    camp_type_caravan VARCHAR(20),
    camp_type_glamping VARCHAR(20)
);

select * from tb_camp;


select * from tb_camp
where camp_address like '%카라반%'
or camp_detail like '%카라반%'
or camp_type_normal like '%카라반%'
or camp_type_car like '%카라반%'
or camp_type_caravan  like '%카라반%'
or camp_type_glamping like '%카라반%';

insert into tb_camp (camp_address,camp_detail,camp_type_normal,camp_type_car,
camp_type_caravan,camp_type_glamping)
values('제주5','제주','','자동차','','글램핑');

select count(*) from tb_camp;



drop table tb_camp;
