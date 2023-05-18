<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<button%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="/assets/include/common.css">
        <link rel="stylesheet" href="/assets/party/css/susu.css">
        <style>

        </style>
    </head>

    <body>
        <h1 class="title">
            같이 갈 사람 😁
        </h1>
        <button class="write" id="writebtn">글쓰기</button>
        <div class="orderby">정렬</div>
        <nav>
            <div class="roundbar">
                <div><button type="button">캠프장 이름</button></div>
                <div><button type="button">제목</button></div>
                <div><button type="button">작성자</button></div>
                <div><button type="button">날짜</button></div>
                <div><button type="button">타입</button></div>
                <div><button type="button">정원</button></div>
                <input class="search" type="text">
                <span class="material-symbols-outlined">
                    search
                </span>
            </div>
        </nav>

        <!-- <c:forEach var="b" items="${bList}"> -->
        <section class="content">
            <ul id="party-list">
                <!-- <li>
                    <div class="item_card clearfix">
                        <div class="img-box">
                            <img src="/main/resources/static/assets/home/img/sm_normal.jpg" alt="">
                        </div>
                        <div class="small_title">
                            <div>글램핑 같이 갈분 모집해요~!!</div>
                            <span>준비물은 텐트와 버너...</span>
                        </div>
                        <div class="wirter">
                            by 작성자
                        </div>
                    </div>
                </li> -->
            </ul>
        </section>
        <!-- </c:forEach> -->
    </body>


    <script>
        let $type = 'all';
        let $sort = 'writeTimeDESC';

        // 게시물 목록 렌더링 함수
        function renderCampList({
            allBySort
        }) {
            let tag = '';

            if (allBySort === null || allBySort.length === 0) {
                tag += " ";

            } else {
                for (let party of allBySort) {
                    const {
                        partyNumber,
                        memberNickName,
                        partyTitle,
                        partyContent, // 수정: parrtyContent -> partyContent
                        partyStartDate,
                        partyEndDate,
                        campTypeNormal,
                        campTypeCar,
                        campTypeCaravan,
                        campTypeGlamping,
                        partySize,
                        partyWriteTime,
                        memberNumber,
                        campNumber
                    } = party;

                    tag += "<li>" +
                        "<div class='item_card clearfix'>" +
                        "<div class='img-box'>";

                    if (campTypeNormal === "normal") {
                        tag += "<img src='/assets/home/img/sm_normal.jpg' alt='normal'>";
                    } else if (campTypeGlamping === "glamping") {
                        tag += "<img src='/assets/home/img/sm_glamping.jpg' alt='glamping'>";
                    } else if (campTypeCaravan === "caravan") {
                        tag += "<img src='/assets/home/img/sm_caraban.jpg' alt='caravan'>";
                    } else {
                        tag += "<img src='/assets/home/img/sm_car.jpg' alt='car'>";
                    }
                    tag += "</div>" +
                        "<div class='small_title'>" +
                        "<div>" + partyTitle + "</div>" +
                        "<span>" + partyContent + "</span>" +
                        "</div>" +
                        "<div class='wirter'>" +
                        "by" + memberNickName +
                        "</div>" +
                        "</div>" +
                        "</li>";
                }

                // 생성된 파티 tag 렌더링
                document.getElementById('party-list').innerHTML = tag;
            }
        }


        // 같이갈 사람 구하는 게시물 목록 불러오는 함수
        function getPartyList() {

            fetch('/jeju-camps/parties/all-list/' + $type + '/' + $sort)
                .then(res => res.json())
                .then(responseResult => {
                    console.log(responseResult);
                    renderCampList(responseResult);
                });
        }

        const writebtn = document.getElementById('writebtn'); // 수정: .wirtebtn -> writebtn
        writebtn.onclick = e => {
            // 글쓰기 버튼을 누르면 작성폼으로 이동
            window.location.href = "party_write.jsp"; // 페이지로 이동해야 합니다.
        };

        // 메인 실행부
        (function () {
            // 파티원 게시물 리스트 불러오기
            getPartyList();
        })();
    </script>


    </html>