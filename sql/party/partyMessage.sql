CREATE TABLE TB_PARTY_MESSAGE (
	party_message_number INT(10) AUTO_INCREMENT,
	party_message_content VARCHAR(1000) NOT NULL,
	party_message_time TIMESTAMP default CURRENT_TIMESTAMP,
	party_message_sender INT(10),
	party_message_recipient INT(10),
	party_number INT(10),
	PRIMARY KEY (party_message_number),
	FOREIGN KEY (party_number) REFERENCES TB_PARTY(party_number),
	FOREIGN KEY (party_message_sender) REFERENCES TB_MEMBER(member_number),
	FOREIGN KEY (party_message_recipient) REFERENCES TB_MEMBER(member_number)
);



