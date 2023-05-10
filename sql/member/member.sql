CREATE TABLE MEMBER_TBL (
    member_number 	 INT(10) 		AUTO_INCREMENT,
    member_email     VARCHAR(50)    NOT NULL UNIQUE KEY,
    member_password  VARCHAR(200) 	NOT NULL,
    member_name      VARCHAR(30)    NOT NULL,
    member_nickname   VARCHAR(50)   NOT NULL UNIQUE KEY,
    member_phone     VARCHAR(13)    NOT NULL UNIQUE KEY,
    member_age       INT(3)         NOT NULL,
    member_gender    VARCHAR(1)     NOT NULL,
    member_join_date TIMESTAMP 		NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (member_number)
);