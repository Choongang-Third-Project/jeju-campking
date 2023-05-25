-- 소모품 찜목 테이블 생성
CREATE table TB_CONSUMABLE_WISH (
	consumable_wish INT(10) NOT NULL AUTO_INCREMENT,
	consumable_idx INT(10) NOT NULL,
	member_number INT(10) NOT NULL,
	is_like VARCHAR(1) NOT NULL DEFAULT 'N',
	PRIMARY KEY(consumable_wish)
);

-- 소모품 테이블 생성
create table TB_CONSUMABLE (
	consumable_idx INT(10) AUTO_INCREMENT,
	consumable_name VARCHAR(20) NOT NULL,
	consumable_price INT(10) NOT NULL,
	consumable_info VARCHAR(200) NOT NULL,
	consumable_category VARCHAR(30) NOT NULL,
	consumable_img VARCHAR(2000) NOT NULL,
	PRIMARY KEY(consumable_idx)
) auto_incremenent = 3000;
