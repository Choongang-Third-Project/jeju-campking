-- tb_highcost Table Create SQL
-- 테이블 생성 SQL - tb_highcost
CREATE TABLE tb_highcost
(
    highcost_idx       INT(10)         NOT NULL    AUTO_INCREMENT,
    highcost_name      VARCHAR(20)     NOT NULL,
    highcost_price     INT(10)         NOT NULL,
    highcost_info      VARCHAR(200)    NOT NULL,
    highcost_category  VARCHAR(10)     NOT NULL,
    highcost_img       VARCHAR(2000)   NOT NULL,
    PRIMARY KEY (highcost_idx)
);


-- 고가장비 더미데이터 50개
INSERT INTO tb_highcost (highcost_name,
                         highcost_price,
                         highcost_info,
                         highcost_category,
                         highcost_img)
VALUES
    ('침침낭1', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('침침낭2', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('짱텐트3', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('짱텐트4', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('테이블블5', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('테이블블6', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('스토부7', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('테이블블8', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('테이블블9', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('침침낭10', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('짱텐트11', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('짱텐트12', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('테이블블13', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('스토부14', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('짱텐트15', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('테이블블16', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('스토부17', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('침침낭18', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('침침낭19', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('테이블블20', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('짱텐트21', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('침침낭22', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('짱텐트23', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('짱텐트24', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('침침낭25', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('침침낭26', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('스토부27', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('스토부28', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('짱텐트29', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('침침낭30', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('테이블블31', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('짱텐트32', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('스토부33', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('스토부34', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('테이블블35', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('스토부36', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('테이블블37', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('테이블블38', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('짱텐트39', 100000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg'),
    ('스토부40', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('스토부41', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('테이블블42', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('스토부43', 400000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('침침낭44', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('테이블블45', 300000, '완전 비싼 테이블~', '테이블', '/assets/shop/highcost/table.jpg'),
    ('침침낭46', 200000, '아주 좋은 침낭/매트~', '침낭/매트', '/assets/shop/highcost/mat.jpg'),
    ('스토부47', 300000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('스토부48', 100000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('스토부49', 200000, '성능 짱짱 스토브~', '스토브', '/assets/shop/highcost/stove.jpg'),
    ('짱텐트50', 200000, '짱 좋은 텐트~ 방수탁월ㄷㄷ', '텐트', '/assets/shop/highcost/tent.jpg')
;


-- tb_highcost_wish Table Create SQL
-- 테이블 생성 SQL - tb_highcost_wish
/*
CREATE TABLE tb_highcost_wish
(
    highcost_wish  INT(10)		 NOT NULL    AUTO_INCREMENT,
    highcost_idx   INT(10)       NOT NULL,
    member_number  INT(10)       NOT NULL,
    is_like  	   VARCHAR(1)    NOT NULL    DEFAULT 'N',
    PRIMARY KEY (highcost_wish)
)
;
*/


/**
* 고가장비 더미데이터 생성 코드
*/
/*
        String[] nameList = {"'짱텐트", "'침침낭", "'테이블블", "'스토부"};
        String[] infoList = {"'짱 좋은 텐트~ 방수탁월ㄷㄷ'", "'아주 좋은 침낭/매트~'", "'완전 비싼 테이블~'", "'성능 짱짱 스토브~'"};
        String[] categoryList = {"'텐트'", "'침낭/매트'", "'테이블'", "'스토브'"};
        String[] imageList = {"'/assets/shop/highcost/tent.jpg'",
                "'/assets/shop/highcost/mat.jpg'",
                "'/assets/shop/highcost/table.jpg'",
                "'/assets/shop/highcost/stove.jpg'"};
        Long[] priceList = {100000L, 200000L, 300000L, 400000L};
        Random random = new Random();

        System.out.println("INSERT INTO tb_highcost (" +
                "highcost_name, \n" +
                "highcost_price,\n" +
                "highcost_info,\n" +
                "highcost_category,\n" +
                "highcost_img)\n" +
                "VALUES ");
        for (int i = 1; i <= 50; i++) {
            int randomNum = random.nextInt(4); // 0,1,2,3 랜덤
            System.out.println("(" +
                    nameList[randomNum] + i + "', " +
                    priceList[randomNum] + ", " +
                    infoList[randomNum] + ", " +
                    categoryList[randomNum] + ", " +
                    imageList[randomNum] +
                    "),");
        }
*/
