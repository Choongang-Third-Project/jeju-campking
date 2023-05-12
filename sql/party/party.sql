-- TODO : TB_PARTY 테이블 생성 쿼리
CREATE TABLE TB_PARTY (
	party_number INT(10) AUTO_INCREMENT,
	party_title VARCHAR(200),
	party_start_date DATE NOT NULL,
	party_end_date DATE NOT NULL,
	party_size INT(3),
	party_write_time TIMESTAMP default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	member_number INT(10),
	camp_number INT(10),
	PRIMARY KEY (party_number),
	FOREIGN KEY (member_number) REFERENCES TB_MEMBER(member_number),
	FOREIGN KEY (camp_number) REFERENCES TB_CAMP(camp_number)
);



-- TODO : TB_PARTY 테이블 데이터 추가 쿼리
INSERT INTO TB_PARTY
(party_title, party_start_date,party_end_date,party_size,member_number,camp_number)
VALUES
("플레이스 캠프 같이 노실분" , "2023-04-24","2023-04-26",4,4,21)
,("회 같이 먹으실분" , "2023-05-28","2023-05-30",6,6,11)
,("낚시하러 가실분?" , "2023-06-20","2023-07-03",2,11,4)
,("한라산 등산 파티 구함" , "2023-05-19","2023-05-22",8,13,40)
,("날씨도 더운데 바다에서 노실분!!" , "2023-08-12","2023-08-15",4,15,39)
,("게스트하우스 파티하실분??" , "2023-07-11","2023-07-15",2,1,27)
;