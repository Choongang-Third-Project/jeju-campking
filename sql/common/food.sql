drop table tb_food;

create table tb_food(
	food_idx int(10) primary key auto_increment,
	food_name varchar(20) not null,
	food_price int(10) not null,
	food_info varchar(200) not null,
	food_category varchar(20) not null,
	food_img varchar(2000) not null
)auto_increment=3000;

-- 과일, 고기, 야채, 해산물  1 2 3 4

insert into tb_food (food_name, food_price, food_info, food_category, food_img)
		values ('사과', 2000, '맛있는 사과입니다', '과일', '/assets/shop/food/fruit.jpg');
select * from tb_food;


-- 제약 조건, 개발 테스트 끝나면 넣으시면 됩니다
-- alter table tb_food_wish add constraint FK_food_wish_member_number foreign key (member_number) references tb_member(member_number);




