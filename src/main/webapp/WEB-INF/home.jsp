<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


    <link rel="stylesheet" href="/assets/include/common.css">
    <link rel="stylesheet" href="/assets/home/css/home.css">
</head>

<body>

    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <div class="wrapper">

        <!-- header 시작 -->
        <header>
            여긴 헤더
            <br>
            <c:if test="${sessionScope.login != null}">
                ${sessionScope.login.memberNickname}님 하이룽~
            </c:if>
        </header>
        <!-- header 끝 -->

        <!-- section.main -->
        <section class="main">

            <div class="container">
                <div class="search-container">
                    <input type="text" class="search">
                    <button class="searchBtn btn btn-error btn-lg"><i class="fa-solid fa-magnifying-glass"></i></button>
                
                </div>
                <p>
                    #올레길 #제주 #한라산 #성산일출봉 #천지연폭포 #해녀
                </p>

            </div>

            <div class="radial-container flex">
                <div>
                    <div class="radial-progress r1" style="--value:100; --size:9rem; --thickness: 0.7rem;">4,000</div>
                    <div class="text">
                        <p>전체</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r2" style="--value:70; --size:9rem; --thickness: 0.7rem;">70%</div>
                    <div class="text">
                        <p>일반야영장</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r3" style="--value:70; --size:9rem; --thickness: 0.7rem;">70%</div>
                    <div class="text">
                        <p>자동차야영장</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r4" style="--value:70; --size:9rem; --thickness: 0.7rem;">70%</div>
                    <div class="text">
                        <p>카라반</p>
                    </div>

                </div>
                <div>
                    <div class="radial-progress r5" style="--value:70; --size:9rem; --thickness: 0.7rem;">70%</div>
                    <div class="text">
                        <p>글램핑</p>
                    </div>
                </div>
            </div>




            <div class="new-container">
                <h1><span>New</span>&Update</h1>
                <ul>
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
                        <div class="img-box"><img src="/assets/home/img/sm_caraban.jpg"
                                alt=""></div>
                        <div class="text">
                            <p><i class="fa-solid fa-caravan"></i> 카라반</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="img-box"><img src="/assets/home/img/sm_glamping.jpg"
                                alt=""></div>
                        <div class="text">
                            <p><i class="fa-solid fa-tent"></i> 글램핑</p>
                        </div>
                    </a>
                </li>
            </ul>

        </section>



        <section class="board">
            <div class="sub-board">
                <p> <i class="fa-solid fa-flag"></i></p>
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




</body>

</html>