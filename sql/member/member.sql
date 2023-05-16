CREATE TABLE TB_MEMBER (
    member_number 	 INT(10) 		AUTO_INCREMENT,
    member_email     VARCHAR(50)    NOT NULL UNIQUE KEY,
    member_password  VARCHAR(200) 	NOT NULL,
    member_name      VARCHAR(30)    NOT NULL,
    member_phone     VARCHAR(13)    NOT NULL UNIQUE KEY,
    member_gender    VARCHAR(1)     NOT NULL,
    member_nickname  VARCHAR(50)   NOT NULL UNIQUE KEY,
    member_age       INT(3)         NOT NULL,
    member_session_id  VARCHAR(200)    DEFAULT 'none',
    member_cookie_date   DATETIME,
    member_info VARCHAR(10) NOT NULL,
    member_join_date DATE 		NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (member_number)
);

insert into TB_MEMBER (
    member_email,
    member_password,
    member_name,
    member_phone,
    member_gender ,
    member_nickname,
    member_age ,
    member_join_date
)
values
("a0@naver.com", "1234","캠프킹이름0",  "0101111100","F","닉네임0",20,"2023-06-3"),
("a1@naver.com", "1234","캠프킹이름1",  "0101111101","F","닉네임1",21,"2023-04-12"),
("a2@naver.com", "1234","캠프킹이름2",  "0101111102","F","닉네임2",22,"2023-03-2"),
("a3@naver.com", "1234","캠프킹이름3",  "0101111103","F","닉네임3",23,"2023-04-16"),
("a4@naver.com", "1234","캠프킹이름4",  "0101111104","F","닉네임4",24,"2023-02-17"),
("a5@naver.com", "1234","캠프킹이름5",  "0101111105","F","닉네임5",25,"2023-06-8"),
("a6@naver.com", "1234","캠프킹이름6",  "0101111106","F","닉네임6",26,"2023-08-16"),
("a7@naver.com", "1234","캠프킹이름7",  "0101111107","F","닉네임7",27,"2023-05-28"),
("a8@naver.com", "1234","캠프킹이름8",  "0101111108","F","닉네임8",28,"2023-02-10"),
("a9@naver.com", "1234","캠프킹이름9",  "0101111109","F","닉네임9",29,"2023-04-2"),
("a10@naver.com", "1234","캠프킹이름10",  "0101111110","M","닉네임10",30,"2023-04-11"),
("a11@naver.com", "1234","캠프킹이름11",  "0101111111","M","닉네임11",31,"2023-06-9"),
("a12@naver.com", "1234","캠프킹이름12",  "0101111112","M","닉네임12",32,"2023-03-14"),
("a13@naver.com", "1234","캠프킹이름13",  "0101111113","M","닉네임13",33,"2023-06-12"),
("a14@naver.com", "1234","캠프킹이름14",  "0101111114","M","닉네임14",34,"2023-01-12"),
("a15@naver.com", "1234","캠프킹이름15",  "0101111115","M","닉네임15",35,"2023-07-2"),
("a16@naver.com", "1234","캠프킹이름16",  "0101111116","M","닉네임16",36,"2023-04-17"),
("a17@naver.com", "1234","캠프킹이름17",  "0101111117","M","닉네임17",37,"2023-04-19"),
("a18@naver.com", "1234","캠프킹이름18",  "0101111118","M","닉네임18",38,"2023-06-24"),
("a19@naver.com", "1234","캠프킹이름19",  "0101111119","M","닉네임19",39,"2023-06-5");

종료 코드 0(으)로 완료된 프로세스


종료 코드 0(으)로 완료된 프로세스

    public static void main(String[] args) {
        for (int i = 0; i < 20; i++) {
            int a = (int) (Math.random() * (31 - 1) + 1);
            int b = (int) (Math.random() * (9 - 1) + 1);
            System.out.print("(");
            if (i < 10) {
                System.out.print("\"a" + i + "@naver.com\", \"1234\"" + ",\"캠프킹이름" + i + "\",  \"010111110" + i + "\"," + "\"F\","+"\"닉네임"+i +"\","+(20+i)+",\"2023-0"+b+"-"+a+"\"");
            }else{
                System.out.print("\"a" + i + "@naver.com\", \"1234\"" + ",\"캠프킹이름" + i + "\",  \"01011111" + i+ "\"," + "\"M\","+"\"닉네임"+ i +"\","+(20+i)+",\"2023-0"+b+"-"+a+"\"");
            }
            System.out.print("),");
            System.out.println();

        }
    }


