<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- set-up -->        
        <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.tailwindcss.com"></script>


        <h1 class="title">
            같이 갈 사람 😁
        </h1>
        <button class="write" id="writebtn">글쓰기</button>
        <nav>
            <div class="roundbar">

                <div id="type-btn-box" class="type-btn">
                    <button id="type-all" data-type="all" class="btn-type btn btn-outline m-1">모든 캠핑장</button>
                    <button id="type-normal" data-type="normal" class="btn-type btn btn-outline btn-primary m-1">일반 캠핑장</button>
                    <button id="type-car" data-type="car" class="btn-type btn btn-outline btn-secondary m-1">자동차 캠핑장</button>
                    <button id="type-caravan" data-type="caravan" class="btn-type btn btn-outline btn-accent m-1">카라반</button>
                    <button id="type-glamping" data-type="glamping" class="btn-type btn btn-outline btn-info m-1">글램핑</button>
                </div>

                <input id="search_content" class="search" type="text">
                <span class="material-symbols-outlined" id="search_btn">
                    search
                </span>
            </div>
        </nav>


        <section class="content">
            <ul id="party-list">
                <li>
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
                </li>
            </ul>
        </section>
    </body>


    <script>
        let $type = 'all';
        let $sort = 'writeTimeDESC';

        // 게시물 목록 렌더링 함수
        function renderCampList(
            allBySort
        ) {
            let tag = '';

            if (allBySort === null || allBySort.length === 0) {
                tag += " ";

            } else {

                console.log(allBySort);

                for (let party of allBySort) {
                    const {
                        partyNumber,
                        memberNickName,
                        partyTitle,
                        partyContent,
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

                    if (campTypeGlamping) {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/glamping">';
                    } else if (campTypeCar) {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/car">';
                    } else if (campTypeCaravan) {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/caravan">';
                    } else  {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/normal">';
                    }

                    tag += "<li>" +
                        "<div class='item_card clearfix'>" +
                        "<div class='img-box'>";

                    if (campTypeGlamping) {
                        tag += "<img src='/assets/home/img/sm_glamping.jpg' alt='glamping'>";
                    } else if (campTypeCar) {
                        tag += "<img src='/assets/home/img/sm_car.jpg' alt='car'>";
                    } else if (campTypeCaravan) {
                        tag += "<img src='/assets/home/img/sm_caraban.jpg' alt='caravan'>";
                    } else  {
                        tag += "<img src='/assets/home/img/sm_normal.jpg' alt='normal'>";
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
                        "</li>" +
                       "</a>";
                }

                // 생성된 파티 tag 렌더링
               // console.log(tag);

                document.getElementById('party-list').innerHTML = tag;
            }
        }

        // 같이갈 사람 구하는 게시물 목록 불러오는 함수
        function getPartyList() {

            fetch('/jeju-camps/parties/all-list/' + $type + '/' + $sort)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderCampList(responseResult);
                });
        }


        // 정렬 버튼 함수 추가
        const $btnType = [...document.querySelectorAll('.btn-type')];
        $btnType.forEach( e => {
            e.onclick = btn => {
                getOrderedPartyList(e.dataset.type, 'writeTimeDESC');               
            }

        });





        // //정렬 버튼 누르면 정렬하기 함수 -> 백엔드에서 어떤 부분인지 확인해야함 
        // const $order = document.querySelector('.orderby');
        // $order.onclick = e => {
        //     //정렬한 리스트 불러오기 
        //     const $btnType = document.getElementById('btn-type');
            
        //     getOrderedPartyList('car','writeTimeDESC');

        // }




        //정렬한 리스트 불러오기 함수 
        function getOrderedPartyList(inputType, inputSort) {
            fetch('/jeju-camps/parties/all-list/' + inputType + '/' + inputSort)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderCampList(responseResult);
                });
        }





        // 검색 하기 기능 
        const $search = document.getElementById('search_content');
        // 돋보기 버튼 누르면 검색
        const $searchbtn = document.getElementById('search_btn');
        $searchbtn.onclick = e => {
            // 필터링해서 가져오기  <- 백엔드에서 구현하기 
            // 필터링한 데이터 랜더링함수
            getSearchPartyList();
        }

        // 키워드 검색 파티 게시물 리스트 불러오기함수 
        function getSearchPartyList() {
            fetch('/jeju-camps/parties/all-list/' + $type + '/' + $sort)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderCampList(responseResult);
                });
        }

        const $writebtn = document.getElementById('writebtn'); // 수정: .wirtebtn -> writebtn
        $writebtn.onclick = e => {
            // 글쓰기 버튼을 누르면 작성폼으로 이동
            console.log("이동하기");
            location.href = "/jeju-camps/parties/write"; // 페이지로 이동해야 합니다.

        };

        // 메인 실행부
        (function () {
            // 파티원 게시물 리스트 불러오기
            getPartyList();
        })();


    </script>


    </html>