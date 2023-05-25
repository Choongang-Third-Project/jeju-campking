<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jeju Camp King</title>

    <%@ include file = "../include/static-head.jsp" %>
    <link rel="stylesheet" href="/assets/home/css/home.css">
    <script src="/assets/home/js/home.js" defer></script>

</head>

<body>

    <div class="wrap">

        <div class="wrapper">

            <!-- header 시작 -->

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
                                    <a href='/jeju-camps/mypage/${memberNumber}'>
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
                                <div class="profile dropdown">
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
                                        <a href='/jeju-camps/mypage/${memberNumber}'>마이페이지</a>
                                        <a href='/member/logout'>로그아웃</a>
                                    </div>
                                </div>
                            </li>

                            <li> 오늘은 어디로 떠나세요?</li>

                        </ul>
                    </nav>


                </div>
            </header>
            <!-- header 끝 -->

            <!-- section.main -->
            <section class="main">

                <div class="container">
                    <div class="search-container">         
                            <input type="text" class="search" name="search">
                            <button class="searchBtn btn btn-error btn-lg" id="searchBtn"><i
                                    class="fa-solid fa-magnifying-glass"></i></button>
                    </div>

                    <ul class="hashtag">
                        <li>
                            #올레길 #제주 #한라산 #성산일출봉 #천지연폭포 #해녀
                        </li>
                        <li>
                            #천지연폭포 #해녀 #제주맛집 #한라산등반 #성산일출봉 #서귀포맛집
                        </li>
                        <li>
                            #제주여행 #제주관광지 #제주해변 #제주풍경 #제주문화 #제주맛집추천
                        </li>
                    </ul>

                </div>

                <div class="radial-container flex">
                    <div>
                        <a href="http://localhost:8181/jeju-camps/info">
                            <div class="radial-progress r1" style="--value:100; --size:9rem; --thickness: 0.7rem;">
                                ${c.totalCount}개
                            </div>
                            <div class="text">
                                <p>전체</p>
                            </div>
                        </a>
                    </div>
                    <div>
                        <a href="/jeju-camps/info?search=일반">
                            <div class="radial-progress r2 "
                                style="--value:${c.normalPercentage}; --size:9rem; --thickness: 0.7rem;">
                                ${c.normalPercentage}%
                            </div>
                            <div class="text">
                                <p>일반야영장</p>
                                <p class="count">(${c.normalCount}개)</p>
                            </div>
                        </a>
                    </div>
                    <div>
                        <a href="/jeju-camps/info?search=자동차">
                            <div class="radial-progress r3"
                                style="--value:${c.carPercentage}; --size:9rem; --thickness: 0.7rem;">${c.carPercentage}%
                            </div>
                            <div class="text">
                                <p>자동차야영장</p>
                                <p class="count">(${c.carCount}개)</p>
                            </div>
                        </a>
                    </div>
                    <div>
                        <a href="/jeju-camps/info?search=카라반">
                            <div class="radial-progress r4"
                                style="--value:${c.caravanPercentage}; --size:9rem; --thickness: 0.7rem;">
                                ${c.caravanPercentage}%
                            </div>
                            <div class="text">
                                <p>카라반</p>
                                <p class="count">(${c.caravanCount}개)</p>
                            </div>
                        </a>
                    </div>
                    <div>
                        <a href="/jeju-camps/info?search=글램핑">
                            <div class="radial-progress r5"
                                style="--value:${c.glampingPercentage}; --size:9rem; --thickness: 0.7rem;">
                                ${c.glampingPercentage}%
                            </div>
                            <div class="text">
                                <p>글램핑</p>
                                <p class="count">(${c.glampingCount}개)</p>
                            </div>
                        </a>
                    </div>
                </div>

            </section>



            <!-- section.notice -->
            <section class="notice">

                <div class="notice-inner">

                    <div class="notice-box nb1">
                        <a href="/jeju-camps/notices">
                            <p class="notic">
                                <i class="fa-regular fa-clipboard"></i> 공지사항
                            </p>
                        </a>
                        <div id="noticeTwo">
                            <c:forEach var="n" items="${notice}">
                                <a href="/jeju-camps/notices/details?boardNumber=${n.boardNumber}">
                                    <p>
                                        <span class="date"> 
                                            ${fn:substring(n.boardTime,0,10)}
                                        </span>
                                        <span class="line">${n.boardTitle}</span>
                                    </p>
                                </a>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="notice-box nb2">
                        <ul class="banner">
                            <li>
                                <a href="#">
                                    <div class="banner-img-box">
                                        <img src="/assets/home/img/banner1.png" alt="">
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="banner-img-box">
                                        <img src="/assets/home/img/banner2.png" alt="">
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="banner-img-box">
                                        <img src="/assets/home/img/banner3.png" alt="">
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>

            </section>










            <!-- section.camp-type -->
            <section class="camp-type">
                <div class="title">
                    <h1><i class="fa-solid fa-map-location-dot"></i> 어디로 갈까?</h1>
                </div>

                <ul class="sub-container clearfix">
                    <li>
                        <a href="/jeju-camps/info?search=일반">
                            <div class="img-box"><img src="/assets/home/img/sm_normal.jpg" alt="">
                            </div>
                            <div class="text">
                                <p><i class="fa-solid fa-tree"></i> 일반야영장</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/jeju-camps/info?search=자동차">
                            <div class="img-box"><img src="/assets/home/img/sm_car.jpg" alt="">
                            </div>
                            <div class="text">
                                <p><i class="fa-solid fa-campground"></i> 자동차야영장</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/jeju-camps/info?search=카라반">
                            <div class="img-box"><img src="/assets/home/img/sm_caraban.jpg" alt=""></div>
                            <div class="text">
                                <p><i class="fa-solid fa-caravan"></i> 카라반</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/jeju-camps/info?search=글램핑">
                            <div class="img-box"><img src="/assets/home/img/sm_glamping.jpg" alt=""></div>
                            <div class="text">
                                <p><i class="fa-solid fa-tent"></i> 글램핑</p>
                            </div>
                        </a>
                    </li>

                </ul>

            </section>





            <section class="new">

                <div class="new-container">
                    <h1><span>New</span>&Update</h1>
                    <ul id="slideshow">
                        <li>
                            <a href="/jeju-camps/info/details?title=(주)자연인">
                                <div class="new-img-box">
                                    <img src="/assets/home/img/jeju-camp1.jpg" alt="">
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="/jeju-camps/info/details?title=에코힐글램핑">
                                <div class="new-img-box">
                                    <img src="/assets/home/img/jeju-camp2.jpg" alt="">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/jeju-camps/info/details?title=메이%20더%20카라반%20(메이캠프)">
                                <div class="new-img-box">
                                    <img src="/assets/home/img/jeju-camp3.jpg" alt="">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/jeju-camps/info/details?title=㈜제주글램핑">
                                <div class="new-img-box">
                                    <img src="/assets/home/img/jeju-camp4.jpg" alt="">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/jeju-camps/info/details?title=캠파제주">
                                <div class="new-img-box">
                                    <img src="/assets/home/img/jeju-camp5.jpg" alt="">
                                </div>
                            </a>
                        </li>

                    </ul>

                    <div class="camp-name">

                        <ul>
                            <li>
                                <p>일반/글램핑/카라반</p>
                                <p>(주)자연인</p>
                            </li>
                            <li>
                                <p>일반/글램핑/카라반</p>
                                <p>에코힐글램핑</p>
                            </li>
                            <li>
                                <p>유료캠핑장</p>
                                <p>메이 더 카라반</p>
                            </li>
                            <li>
                                <p>일반/글램핑</p>
                                <p>(주)제주 글램핑</p>
                            </li>
                            <li>
                                <p>글램핑/카라반</p>
                                <p>캠파제주</p>
                            </li>

                        </ul>
                    </div>

                </div>

            </section>





            <!-- section.board-wrapper -->
            <section class="board-wrapper">

                <div class="board">
                    <div class="sub-board">
                        <p><i class="fa-solid fa-tents"></i></p>
                        <h2>금주의 캠프킹</h2>
                        <c:forEach var="c" items="${campRank}" varStatus="status">
                      
                            <a href="/jeju-camps/info/details?title=${c.campName}">
                                <div class="rank">
                                    <h4>
                                        <span id="rank${status.index+1}" class="rank-text">${status.index+1}위</span>
                                    </h4>
                                    <span class="ranklist" id="campName${status.index+1}">${c.campName}</span>
                            
                                </div>
                            </a>
                        </c:forEach>

                    </div>
                    <div class="sub-board">
                        <p><i class="fa-solid fa-people-roof"></i></p>
                        <h2>같이 갈 사람</h2>
                        <c:forEach var="p" items="${partyRank}">
                            <a href="/jeju-camps/parties/${p.partyNumber}/caravan">
                                <div class="rank">
                                    <h4>${p.partyNumber}</h4>
                                    <span class="ranklist">${p.partyTitle}</span>
                                </div>
                            </a>
                        </c:forEach>

                    </div>
                    <div class="sub-board">
                        <p><i class="fa-solid fa-screwdriver-wrench"></i></p>
                        <h2>장비대여</h2>
                        <a href= '/api/v1/items' class="update">
                            <img src="/assets/home/img/update.png" alt="">
                        </a>
                    </div>
                </div>
            </section>



            <!-- section.ppl-wrapper -->
            <section class="ppl-wrapper">

                <div class="ppl">
                    <h3>PARTNER</h3>
                    <p>상생 파트너와 함께 새로운 문화를 만들어 갑니다.</p>
                    <ul class="img-box">
                        <li><img src="/assets/home/img/ppl01.png" alt=""></li>
                        <li><img src="/assets/home/img/ppl02.png" alt=""></li>
                        <li><img src="/assets/home/img/ppl03.png" alt=""></li>
                    </ul>
                    <ul class="img-box">
                        <li><img src="/assets/home/img/ppl04.png" alt=""></li>
                        <li><img src="/assets/home/img/ppl05.png" alt=""></li>
                        <li><img src="/assets/home/img/ppl06.png" alt=""></li>
                    </ul>

                </div>
            </section>



            <!-- footer 시작 -->
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




        </div>


    </div>

  

</body>

</html>