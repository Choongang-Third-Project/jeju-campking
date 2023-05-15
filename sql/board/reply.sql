CREATE TABLE TB_REPLY (
	reply_number INT(10) AUTO_INCREMENT,
	reply_content VARCHAR(1000),
	reply_time TIMESTAMP NOT NULL default current_timestamp,
	board_number INT(10),
	member_number INT(10),
	PRIMARY KEY (reply_number),
	FOREIGN KEY (member_number) REFERENCES TB_MEMBER(member_number),
	FOREIGN KEY (board_number) REFERENCES TB_BOARD(board_number)
);
