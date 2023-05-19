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

    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
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
                        <ul class="api">
                            <li>날씨 맑음</li>
                            <li>미세먼지 없음</li>
                        </ul>
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
                                    <div class="indicator">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none"
                                            viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                                        </svg>
                                        <span class="badge badge-xs badge-primary indicator-item">${count}</span>
                                    </div>
                                </button>
                            </li>

                            <li>
                                <div class="profile dropdown">
                                    <button class="smbtn">
                                        <div class="profile-box">
                                            <c:if test="${LOGIN == null || LOGIN.profile == null}">
                                                <img src="/assets/header/img/soongu.jpg" alt="미로그인">
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
        </div>
    </div>
</body>

</html>