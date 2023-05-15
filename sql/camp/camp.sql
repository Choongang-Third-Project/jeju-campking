-- TODO : TB_CAMP 테이블 생성 쿼리
create TABLE TB_CAMP (
    camp_number int(10) AUTO_INCREMENT,
    camp_name VARCHAR(100) NOT NULL,
    camp_address VARCHAR(200) NOT NULL,
    camp_type_normal VARCHAR(20),
    camp_type_car VARCHAR(20),
    camp_type_caravan VARCHAR(20),
    camp_type_glamping VARCHAR(20),
    camp_latitude VARCHAR(20) NOT NULL,
    camp_longitude VARCHAR(20) NOT NULL,
    PRIMARY KEY (camp_number),
    UNIQUE KEY (camp_name)
);


-- TODO : TB_CAMP 테이블 데이터 추가 쿼리
insert into TB_CAMP (
    camp_address,
    camp_name,
    camp_type_normal,
    camp_type_car,
    camp_type_caravan,
    camp_type_glamping,
    camp_latitude,
    camp_longitude
)
values ('제주시 애월읍 고내리 41', '마레보 카라반', '일반','','','','33.471686', '126.3542079'),
('제주시 아란서길 110-0', '(주)자연인', '일반','','글램핑','카라반','33.4687254', '126.5399565'),
('제주시 구좌읍 덕천리', '㈜제주글램핑', '일반','','글램핑','','33.4814834', '126.752199'),
('제주시 애월읍 고내리', '다인리조트 카라반', '일반','','','카라반','33.4711194', '126.3510175'),
('제주시 조천읍 선흘리', '골체오름캠핑', '일반','자동차','','','33.4516147', '126.7049375'),
('제주시 조천읍 교래리', '교래생태체험장', '일반','','','','33.4260157', '126.6711536'),
('제주시 조천읍 남조로 2023', '교래자연휴양림 야영장', '일반','','','','33.4416045', '126.6646731'),
('제주시 조천읍 함와로 428', '귤빛캠핑장', '일반','','','','33.5049732', '126.6743334'),
('서귀포시 강정동 이어도로 826-58', '돌고래 하우스 카라반', '일반','','','','33.2327306', '126.4994002'),
('서귀포시 안덕면 동광리', '동광농촌체험마을', '일반','','','','33.306675', '126.33705'),
('서귀포시 남원읍 남원리', '작은바람언덕', '','','글램핑','카라반','33.2764957', '126.7101985'),
('제주시 한경면 저지리', '제주 할리데이 카라반', '일반','','','','33.3097563', '126.2790699'),
('제주시 조천읍 함덕리', '제주도캠핑카라반 (함덕캠핑카라반)', '','자동차','글램핑','카라반','33.5424018', '126.6751229'),
('제주시 한경면 청수리', '제주돌하르방 캠핑장', '일반','','','','33.3238571', '126.2389834'),
('제주시 조천읍 남조로 2109-36', '제주베스트힐', '일반','','글램핑','카라반','33.4540559', '126.6575251'),
('제주시 조천읍 중산간동로 1194', '제주벨리타캠핑장', '','자동차','','','33.507783', '126.6980007'),
('서귀포시 표선면 표선백사로 176', '한우물영농조합법인 제주캠핑카라반', '','자동차','글램핑','카라반','33.3304264', '126.8378083'),
('서귀포시 남원읍 태흥리', '제주파인비치 카라반', '','','글램핑','카라반','33.2873616', '126.7482931'),
('제주시 애월읍 하귀2리', '제주플래티늄카라반', '일반','','','카라반','33.4834486', '126.4014075'),
('제주시 애월읍 광령1리', '에코힐글램핑', '일반','','글램핑','카라반','33.4496152', '126.4407995'),
('서귀포시 중문동 천제연로 132', '중문진실캠핑장', '일반','','','','33.2521647', '126.4179087'),
('서귀포시 상효동', '원앙캠핑장', '','','','카라반','33.3000893', '126.5845331'),
('서귀포시 도순동', '팜핑제주', '일반','','','','33.2689132', '126.472629'),
('제주시 애월읍 어음리', '폴리파크카라반', '일반','','','','33.3869205', '126.3747956'),
('제주시 우도면', '사프리카 더 캠프 (구 푸른밤글램핑하우스)', '일반','','','','33.4990875', '126.9596985'),
('제주시 오등동 산록북로 588', '한라산국립공원 관음사지구 야영장', '일반','','','','33.4238713', '126.5542236'),
('서귀포시 보목동 보목포로65번길 6', '햇살정원 제주캠핑&민박', '일반','','','','33.2404153', '126.6081516'),
('서귀포시 최남단해안로 113-0', '최남단글램핑', '','자동차','','','33.2117817', '126.2559245'),
('서귀포시 상효동', '캠파제주', '','','글램핑','카라반','33.2985015', '126.6010346'),
('제주시 조천읍 함덕리', '캠핑스타', '','','글램핑','카라반','33.5439838', '126.6753419'),
('서귀포시 성산읍 섭지코지로25번길 120', '농사체험자동차야영장', '','자동차','','','33.4489633', '126.9203736'),
('제주시 조천읍 신흥리', '무거카라반', '일반','','','','33.5487967', '126.6549076'),
('제주시 조천읍 와흘로 350', '선양캠핑장', '일반','','글램핑','카라반','33.4745476', '126.6437279'),
('서귀포시 하효동', '쇠소깍오토파크', '일반','','','','33.2495393', '126.6145065'),
('제주도 제주시 애월읍 광령남서길 40', '숲속야영장 휴림', '일반','','글램핑','카라반','33.443436', '126.4289921'),
('제주도 서귀포시 성산읍 서성일로 431', '어라운드폴리캠프', '일반','','','','33.4155468', '126.8351051'),
('제주시 구좌읍 일주동로 1626', '메이 더 카라반 (메이캠프)', '','자동차','글램핑','카라반','33.552507', '126.7059174'),
('제주시 한경면 판포리', '비체올린', '일반','자동차','','','33.3496453', '126.2178999'),
('서귀포시 성산읍 독자봉로51번길 27', '국제문화스포츠교육원 제주힐링캠프', '','자동차','','','33.3829357', '126.8724973'),
('제주시 애월읍 하소로 684-25', '유수암 캠핑장', '일반','','','','33.4228776', '126.3938126'),
('제주시 구좌읍 송당6길 78-1', '디-포레 카라반 파크', '','','글램핑','','33.4648262', '126.7811915')
;


select * from tb_camp;


-- TODO : TB_CAMP - 검색어로 조회 쿼리
select * from tb_camp
where camp_address like '%카라반%'
or camp_detail like '%카라반%'
or camp_type_normal like '%카라반%'
or camp_type_car like '%카라반%'
or camp_type_caravan  like '%카라반%'
or camp_type_glamping like '%카라반%';

-- 데이터 갯수 보기
select count(*) from tb_camp;


-- 테이블 삭제
drop table tb_camp;




--------------------------------------------------------------

-- camp 데이터 JS
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>


    <div id="copy"></div>
    <script>
        for (let page = 1; page <= 23; page++) {
            fetch(
                    `https://api.odcloud.kr/api/15037499/v1/uddi:1fe51f51-e956-425b-a9e3-e4555cb57880?page=${page}&perPage=100&serviceKey=SJQl8CX2C3La2Cp0fOiLZwExk6mPixmtX0kji9%2Fd7M0d7VQDHN9QkeUN1xDKEAyYEnSlfla1yPx5m3vswNK0RQ%3D%3D`
                )
                .then(res => res.json())
                .then(data => {
                    // console.log(data);
                    const array = data.data;
                    const $input = document.getElementById('copy');

                    array.filter(info => {
                        console.log(info);

                        if (info['주소'].includes('제주')) {

                            $input.innerHTML += "('";
                            $input.innerHTML += info['주소'].replace('제주특별자치도', '').trim();
                            $input.innerHTML += "', '";
                            $input.innerHTML += info['캠핑(야영)장명'].trim();
                            $input.innerHTML += "', ";

                            if (info['캠핑(야영)장구분'].includes('일반') || info['일반야영장수'] != 0) {
                                $input.innerHTML += "'일반',";
                            } else {
                                $input.innerHTML += "'',";
                            }

                            if (info['캠핑(야영)장구분'].includes('자동차') || info['자동차야영장'] != 0) {
                                $input.innerHTML += "'자동차',";
                            } else {
                                $input.innerHTML += "'',";
                            }

                            if (info['캠핑(야영)장구분'].includes('카라반') || info['글램핑'] != 0) {
                                $input.innerHTML += "'글램핑',";
                            } else {
                                $input.innerHTML += "'',";
                            }

                            if (info['캠핑(야영)장구분'].includes('글램핑') || info['카라반'] != 0) {
                                $input.innerHTML += "'카라반',";
                            } else {
                                $input.innerHTML += "'',";
                            }

                            $input.innerHTML += "'";
                            $input.innerHTML += info['위도'];
                            $input.innerHTML += "', '";
                            $input.innerHTML += info['경도'];
                            $input.innerHTML += "'),";
                            $input.innerHTML += '<br>';
                        }

                    })

                })
        }
    </script>

</body>

</html>