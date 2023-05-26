<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Jeju Camp King</title>
        <%@ include file = "../include/static-head.jsp" %>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="/assets/include/common.css">
        <link rel="stylesheet" href="/assets/party/css/susu.css">
        <link rel="stylesheet" href="/assets/footer/css/footer.css">
        <link rel="stylesheet" href="/assets/header/css/header.css">

        
            <!-- favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/header/img/camp.ico">
        <style>

        </style>
    </head>

    <body>
        <header>
            <div class="inner-header">
                <div class="logo">
                    <a href="/jeju-camps">
                        <img src="/assets/header/img/logo02.png" alt="">
                    </a>
                </div>
        
                <nav class="gnb">
                    <ul>
                        <li><a href="/jeju-camps/notices">공지사항</a></li>
                        <li><a href="/jeju-camps/info">캠핑장</a></li>
                        <li><a href="/jeju-camps/parties">같이갈사람</a></li>
                    </ul>
                    <!-- <ul class="api">
                        <li>날씨 맑음</li>
                        <li>미세먼지 없음</li>
                    </ul> -->
                </nav>
        
                <nav class="tnb">
                    <ul>
        
                        <li>
                            <p>
                                <c:if test="${LOGIN == null}">
                                    침입자
                                </c:if>
                                <c:if test="${LOGIN != null}">
                                    ${LOGIN.memberNickname}님
                                </c:if>
                            </p>
                        </li>
        
                        <li>
                            <button>
                                <a href='/jeju-camps/mypage/${LOGIN.memberNumber}'>
                                    <div class="indicator">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none"
                                            viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                                        </svg>
                                        <span class="badge badge-xs badge-primary indicator-item">${count}</span>
                                    </div>
                                </a>
                            </button>
                        </li>
        
                        <li>
                            <div class="profile dropdowns">
                                <button class="smbtn">
                                    <div class="profile-box">
                                        <c:if test="${LOGIN == null || LOGIN.profile == null}">
                                            <img src="/assets/mypage/img/profile.png" alt="미로그인">
                                        </c:if>
                                        <c:if test="${LOGIN != null && LOGIN.profile != null}">
                                            <img src="/local${LOGIN.profile}" alt="프사">
                                        </c:if>
                                       
                                    </div>
                                </button>
                                <div id="drop-content">
                                    <a href='/jeju-camps/mypage/${LOGIN.memberNumber}'>마이페이지</a>
                                    <a href='/member/logout'>로그아웃</a>
                                </div>
                            </div>
                        </li>
        
                        <li> 오늘은 어디로 떠나세요?</li>
        
                    </ul>
                </nav>
        
        
            </div>
          </header>
       

        <!-- set-up -->        
        <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.tailwindcss.com"></script>
          


        <h1 class="title">
            같이 갈 사람 😁
        </h1>
        <button class="write" id="writebtn">글쓰기</button>
        <!-- <div class="orderby">정렬</div> -->
        <nav>
            <div class="roundbar">


                <div id="type-btn-box" class="type-btn">
                    <button id="type-all" data-type="all" class="btn-type btn btn-outline m-1">모든 캠핑장</button>
                    <button id="type-normal" data-type="normal" class="btn-type btn btn-outline btn-primary m-1">일반 캠핑장</button>
                    <button id="type-car" data-type="car" class="btn-type btn btn-outline btn-secondary m-1">자동차 캠핑장</button>
                    <button id="type-caravan" data-type="caravan" class="btn-type btn btn-outline btn-accent m-1">카라반</button>
                    <button id="type-glamping" data-type="glamping" class="btn-type btn btn-outline btn-info m-1">글램핑</button>
                </div>


               <!-- <input id="search_content" class="search" type="text">
                <span class="material-symbols-outlined" id="search_btn">
                    search
                </span> -->
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

          <!-- footer -->   
        <footer>
            <div class="foot-wrapper">
                <h3>CAMPKING</h3>
                <div class="foot">
                    <p>주식회사 캠프킹 | 대표이사 : 홍순구 | 사업자 등록번호 : 000-00-000000</p>
                    <p>국내여행업 등록번호 : 2023-0000000호 | 자동차대여사업 등록번호 : 서울시 2023-00호 | 통신판매 신고번호 : 2023-서울강남-00000호</p>
                    <p>대표전화 : 02-000-0000 | 팩스 : 0000-000-0000 | E-mail : info@campking.cooom</p>
                    <p>Copyright ⓒ CampKing inc.</p>
                </div>
            </div>
        </footer>
        
    </body>


    <script>
        let $type = 'all';
        let $sort = 'writeTimeDESC';

        // 게시물 목록 렌더링 함수
        function renderCampList(
            allBySort
        ) {
            let tag = '';

            //console.log('allbysort:', allBySort);
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
                    
                    
                    var today = new Date();  
                    var start = new Date(partyStartDate);
                    console.log(start);  
                    //console.log(partyNumber);


                    // console.log(party);  

                    if(today<start) {
                    
                        if (campTypeGlamping) {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/glamping">';
                    } else if (campTypeCar) {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/car">';
                    } else if (campTypeCaravan) {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/caravan">';
                    } else  {
                        tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/normal">';
                    }
                    } 



                    //tag += '<a href="/jeju-camps/parties/'+ partyNumber +'/ ">';


                    tag += "<li>";
                        if(today<start) {
                        tag+="<div class='item_card clearfix'>" ;
                        } else{
                            tag+="<div class='item_card clearfix' style='background:#ccc; cursor: not-allowed;' >"; 
                        }
                        tag += "<div class='img-box'>";

                    // console.log(party);
                    // if (campTypeGlamping === "글램핑") {
                    //     tag += "<img src='/assets/home/img/sm_glamping.jpg' alt='glamping'>";
                    // } else if (campTypeCar === "자동차") {
                    //     tag += "<img src='/assets/home/img/sm_car.jpg' alt='car'>";
                    // } else if (campTypeCaravan === "카라반") {
                    //     tag += "<img src='/assets/home/img/sm_caraban.jpg' alt='caravan'>";
                    // } else  {
                    //     tag += "<img src='/assets/home/img/sm_normal.jpg' alt='normal'>";
                    // }



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
                        "</li>"; 
                    if(today<start) {
                       tag += "</a>";
                    }
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
        //     getOrderedPartyList();
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
        // const $search = document.getElementById('search_content');
        // // 돋보기 버튼 누르면 검색
        // const $searchbtn = document.getElementById('search_btn');
        // $searchbtn.onclick = e => {
        //     // 필터링해서 가져오기  <- 백엔드에서 구현하기 
        //     // 필터링한 데이터 랜더링함수
        //     getSearchPartyList();
        // }

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

        


const $dropContent = document.getElementById("drop-content");
        const $btn = document.querySelector('.smbtn');

        $btn.onclick = () => {
            $dropContent.style.display = "block"; 
        };

        $btn.parentElement.onmouseleave = () => {
            $dropContent.style.display = "none"; 
        };



    </script>


    </html>