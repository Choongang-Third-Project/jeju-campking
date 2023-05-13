<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>

    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.tailwindcss.com"></script>

    <link rel="stylesheet" href="/assets/include/common.css">
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
                    <!-- 여기 홈으로 가는거~ -->
                    <a href="#">
                        <p><i class="fa-solid fa-mountain-sun"></i></p>
                        <p>CAMP<span>KING</span></p>
                    </a>
                </div>

                <nav class="gnb">
                    <ul>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">캠핑장</a></li>
                        <li><a href="#">같이갈사람</a></li>

                    </ul>
                </nav>

                <nav class="tnb">
                    <ul>

                        <li>
                            <p>
                                <c:if test="${sessionScope.login != null}">
                                    ${sessionScope.login.memberNickname}님
                                </c:if>
                            </p>
                        </li>

                        <li>
                            <button>
                                <div class="indicator">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none"
                                         viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                              d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"/>
                                    </svg>
                                    <span class="badge badge-xs badge-primary indicator-item"></span>
                                </div>
                            </button>
                        </li>

                        <li>
                            <div class="profile">
                                <a href="#">
                                    <img src="/assets/header/img/soongu.jpg" alt="프로필사진">
                                </a>
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
                    <input type="text" class="search">
                    <button class="searchBtn btn btn-error btn-lg"><i
                            class="fa-solid fa-magnifying-glass"></i></button>

                </div>

                <ul>
                    <li>
                        #올레길 #제주 #한라산 #성산일출봉 #천지연폭포 #해녀
                    </li>
                    <li>
                        #천지연폭포 #해녀
                    </li>
                    <li>
                        #올레길 #제주 #한라산
                    </li>
                </ul>

            </div>

            <div class="radial-container flex">
                <div>
                    <div class="radial-progress r1" style="--value:100; --size:9rem; --thickness: 0.7rem;">${c.totalCount}개
                    </div>
                    <div class="text">
                        <p>전체</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r2" style="--value:${c.normalPercentage}; --size:9rem; --thickness: 0.7rem;">${c.normalPercentage}%</div>
                    <div class="text">
                        <p>일반야영장</p> <p>(${c.normalCount}개)</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r3" style="--value:${c.carPercentage}; --size:9rem; --thickness: 0.7rem;">${c.carPercentage}%</div>
                    <div class="text">
                        <p>자동차야영장</p> <p>(${c.carCount}개)</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r4" style="--value:${c.caravanPercentage}; --size:9rem; --thickness: 0.7rem;">${c.caravanPercentage}%</div>
                    <div class="text">
                        <p>카라반</p> <p>(${c.caravanCount}개)</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r5" style="--value:${c.glampingPercentage}; --size:9rem; --thickness: 0.7rem;">${c.glampingPercentage}%</div>
                    <div class="text">
                        <p>글램핑</p> <p>(${c.glampingCount}개)</p>
                    </div>
                </div>
            </div>


            <div class="new-container">
                <h1><span>New</span>&Update</h1>
                <ul id="slideshow">
                    <li>
                        <a href="">
                            <div class="new-img-box">
                                <img src="/assets/home/img/camp1.jpg" alt="">
                            </div>
                        </a>
                    </li>

                    <li>
                        <a href="">
                            <div class="new-img-box">
                                <img src="/assets/home/img/camp2.jpg" alt="">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="new-img-box">
                                <img src="/assets/home/img/camp3.jpg" alt="">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="new-img-box">
                                <img src="/assets/home/img/camp4.jpg" alt="">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="new-img-box">
                                <img src="/assets/home/img/camp5.jpg" alt="">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="new-img-box">
                                <img src="/assets/home/img/camp5.jpg" alt="">
                            </div>
                        </a>
                    </li>
                </ul>

            </div>


        </section>


        <section class="camp-type">
            <div class="title">
                <h1>야영지 선택!</h1>
            </div>

            <ul class="sub-container clearfix">
                <li>
                    <a href="#">
                        <div class="img-box"><img src="/assets/home/img/sm_normal.jpg" alt="">
                        </div>
                        <div class="text">
                            <p><i class="fa-solid fa-tree"></i> 일반야영장</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="img-box"><img src="/assets/home/img/sm_car.jpg" alt="">
                        </div>
                        <div class="text">
                            <p><i class="fa-solid fa-campground"></i> 자동차야영장</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="img-box"><img src="/assets/home/img/sm_caraban.jpg" alt=""></div>
                        <div class="text">
                            <p><i class="fa-solid fa-caravan"></i> 카라반</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="img-box"><img src="/assets/home/img/sm_glamping.jpg" alt=""></div>
                        <div class="text">
                            <p><i class="fa-solid fa-tent"></i> 글램핑</p>
                        </div>
                    </a>
                </li>

            </ul>

        </section>


        <section class="board">
            <div class="sub-board">
                <p><i class="fa-solid fa-flag"></i></p>
                <h2>공지사항</h2>
            </div>
            <div class="sub-board">
                <p><i class="fa-solid fa-tents"></i></p>
                <h2>캠핑리뷰</h2>
            </div>
            <div class="sub-board">
                <p><i class="fa-solid fa-people-roof"></i></p>
                <h2>자유게시판</h2>
            </div>
        </section>


        <!-- footer 시작 -->
        <footer></footer>
        <!-- footer 끝 -->


        <!-- wrapper 끝 -->
    </div>


</div>

</body>

</html>