CREATE TABLE TB_BOARD (
	board_number INT(10) AUTO_INCREMENT,
	board_title VARCHAR(200) NOT NULL,
	board_content VARCHAR(2000) NOT NULL,
	board_time TIMESTAMP NOT NULL default current_timestamp,
	member_number INT(10),
	PRIMARY KEY (board_number),
	FOREIGN KEY (member_number) REFERENCES TB_MEMBER(member_number)
);
