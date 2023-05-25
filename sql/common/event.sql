create table tb_event (
    event_idx int(10) auto_increment primary key,
    event_name varchar(20) not null,
    event_price int(10) not null,
    event_info varchar(200) not null,
    event_category varchar(20) not null,
    event_img varchar(200) not null
) auto_increment = 1000
;