-- TODO : TB_PARTY_REPLY 테이블 생성 쿼리
CREATE TABLE TB_PARTY_REPLY (
	party_reply_number INT(10) AUTO_INCREMENT,
	party_reply_content VARCHAR(200) NOT NULL,
	party_reply_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	member_number INT(10),
	party_number INT(10),
	PRIMARY KEY (party_reply_number),
	FOREIGN KEY (member_number) REFERENCES TB_MEMBER(member_number),
	FOREIGN KEY (party_number) REFERENCES TB_PARTY(party_number)
);

-- TODO : TB_PARTY_REPLY 테이블 데이터 추가 쿼리
