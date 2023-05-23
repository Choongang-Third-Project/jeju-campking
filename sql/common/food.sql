create table tb_food (
	food_idx INT(10) AUTO_INCREMENT primary key,
	food_name varchar(20) not null,
	food_info varchar(200) not null,
	food_category varchar(10),
	food_wish INT(10)
) AUTO_INCREMENT = 3000;

create table tb_food_category(
	food_category varchar(10) primary key,
	food_img varchar(2000) not null,
	food_idx INT(10)
);


create table tb_food_wish(
	food_wish int(10) primary key,
	food_idx int(10),
	member_number int(10)
);


-- 제약 조건, 개발 테스트 끝나면 넣으시면 됩니다
-- ALTER TABLE 테이블명 ADD CONSTRAINT 제약사항명 제약사항 (적용컬럼);
-- alter table tb_food add constraint FK_category foreign key (food_category) references tb_food_category(food_category);
-- alter table tb_food add constraint FK_wish foreign key (food_wish) references tb_food_wish(food_wish);
-- alter table tb_food_category add constraint FK_food_category foreign key (food_idx) references tb_food(food_idx);
-- alter table tb_food_wish add constraint FK_food_wish_idx foreign key (food_idx) references tb_food(food_idx);
-- alter table tb_food_wish add constraint FK_food_wish_member_number foreign key (member_number) references tb_member(member_number);




