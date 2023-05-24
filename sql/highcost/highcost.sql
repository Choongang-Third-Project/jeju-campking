-- tb_highcost_category Table Create SQL
-- 테이블 생성 SQL - tb_highcost_category
CREATE TABLE tb_highcost_category
(
    highcost_category  VARCHAR(10)      NOT NULL,
    highcost_img       VARCHAR(2000)    NOT NULL,
    highcost_idx       INT(10)          NOT NULL,
    PRIMARY KEY (highcost_category)
);


-- tb_highcost_wish Table Create SQL
-- 테이블 생성 SQL - tb_highcost_wish
CREATE TABLE tb_highcost_wish
(
    highcost_idx   INT(10)    NOT NULL,
    member_number  INT(10)    NOT NULL,
    highcost_wish  INT(10)    NOT NULL,
    PRIMARY KEY (highcost_wish)
);


-- Foreign Key 설정 SQL - tb_highcost_wish(member_number) -> tb_member(member_number)
ALTER TABLE tb_highcost_wish
    ADD CONSTRAINT member_number FOREIGN KEY (member_number)
        REFERENCES tb_member (member_number) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- tb_highcost Table Create SQL
-- 테이블 생성 SQL - tb_highcost
CREATE TABLE tb_highcost
(
    highcost_idx       INT(10)         NOT NULL    AUTO_INCREMENT,
    highcost_name      VARCHAR(20)     NOT NULL,
    highcost_price     INT(10)         NOT NULL,
    highcost_info      VARCHAR(200)    NOT NULL,
    highcost_category  VARCHAR(10)     NOT NULL,
    highcost_wish      INT(10)         NOT NULL,
    PRIMARY KEY (highcost_idx)
);


-- Foreign Key 설정 SQL - tb_highcost(highcost_category) -> tb_highcost_category(highcost_category)
ALTER TABLE tb_highcost
    ADD CONSTRAINT highcost_category FOREIGN KEY (highcost_category)
        REFERENCES tb_highcost_category (highcost_category) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- Foreign Key 설정 SQL - tb_highcost(highcost_wish) -> tb_highcost_wish(highcost_wish)
ALTER TABLE tb_highcost
    ADD CONSTRAINT highcost_wish FOREIGN KEY (highcost_wish)
        REFERENCES tb_highcost_wish (highcost_wish) ON DELETE RESTRICT ON UPDATE RESTRICT;