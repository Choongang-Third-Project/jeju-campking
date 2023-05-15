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
    member_cookie_enddate   DATETIME,
    member_join_date DATE 		NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (member_number)
);

insert into TB_MEMBER (
    member_number,
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
("a0@naver.com","a1a1a111!,"캠프킹0","01011111110" , "F,"냥냥0 ", 20,"2023-01-1"),
("a1@naver.com","a1a1a122!,"캠프킹1","01011111111" , "F,"냥냥1 ", 21,"2023-01-2"),
("a2@naver.com","a1a1a133!,"캠프킹2","01011111112" , "F,"냥냥2 ", 22,"2023-01-3"),
("a3@naver.com","a1a1a144!,"캠프킹3","01011111113" , "F,"냥냥3 ", 23,"2023-01-4"),
("a4@naver.com","a1a1a155!,"캠프킹4","01011111114" , "F,"냥냥4 ", 24,"2023-01-5"),
("a5@naver.com","a1a1a166!,"캠프킹5","01011111115" , "F,"냥냥5 ", 25,"2023-01-6"),
("a6@naver.com","a1a1a177!,"캠프킹6","01011111116" , "F,"냥냥6 ", 26,"2023-01-7"),
("a7@naver.com","a1a1a188!,"캠프킹7","01011111117" , "F,"냥냥7 ", 27,"2023-01-8"),
("a8@naver.com","a1a1a199!,"캠프킹8","01011111118" , "F,"냥냥8 ", 28,"2023-01-9"),
("a9@naver.com","a1a1a11010!,"캠프킹9","01011111119" , "F,"냥냥9 ", 29,"2023-01-10"),
("a10@naver.com","a1a1a11111!,"캠프킹10","010111111110" , "F,"냥냥10 ", 30,"2023-01-11"),
("a11@naver.com","a1a1a11212!,"캠프킹11","01012111111" , "F,"냥냥11 ",31,"2023-01-12"),
("a12@naver.com","a1a1a11313!,"캠프킹12","01012111112" , "F,"냥냥12 ",32,"2023-01-13"),
("a13@naver.com","a1a1a11414!,"캠프킹13","01012111113" , "F,"냥냥13 ",33,"2023-01-14"),
("a14@naver.com","a1a1a11515!,"캠프킹14","01012111114" , "F,"냥냥14 ",34,"2023-01-15"),
("a15@naver.com","a1a1a11616!,"캠프킹15","01012111115" , "F,"냥냥15 ",35,"2023-01-16"),
("a16@naver.com","a1a1a11717!,"캠프킹16","01012111116" , "F,"냥냥16 ",36,"2023-01-17"),
("a17@naver.com","a1a1a11818!,"캠프킹17","01012111117" , "F,"냥냥17 ",37,"2023-01-18"),
("a18@naver.com","a1a1a11919!,"캠프킹18","01012111118" , "F,"냥냥18 ",38,"2023-01-19"),
("a19@naver.com","a1a1a12020!,"캠프킹19","01012111119" , "F,"냥냥19 ",39,"2023-01-20");

--        for (int i = 0; i < 20 ; i++) {
--            System.out.print("(");
--            System.out.print("\""+("a"+ i) +"@naver.com\",\""+("a"+1)+("a"+1)+("a"+1)+(1+i)+(1+i)+"!"+",\"캠프킹" + i+
--                    "\",\"010");
--            if(i<=10){
--            System.out.print("1111111"+i + "\" , \""+ "F"+",\"냥냥" +i+ " \", "
--                            + (20 + i) +",\"2023-01-" + (1+i) + "\"");
--            } else if(i > 10){
--                System.out.print("1211111"+(i-10) + "\" , \""+ "F"+",\"냥냥" +i+ " \","
--                        + (20 + i) +",\"2023-01-" + (1+i) + "\"");
--            }
--            System.out.print("),");
--            System.out.println();

