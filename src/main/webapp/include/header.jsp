<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>

    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <link rel="stylesheet" href="/assets/include/common.css">


    <style>
        body {
            /* background: #1f2937; */
            background: url('../img/sm_background.jpg') no-repeat center / cover fixed;
            height: 100vh;

        }

        .wrapper {
            margin: 0 auto;
        }

        .wrap header {
            padding-top: 15px;
            height: 150px;
            /* border: 4px solid red; */
            background-color: rgba(0, 0, 0, 0.4);


        }


        .inner-header {
            color: #fff;
            width: 75%;
            margin: 0 auto;
            font-weight: 700;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }


        .inner-header .logo a {
            margin-left: 70px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            text-decoration: none;
        }

        .inner-header .logo a p {
            margin: 0;
        }

        .inner-header .logo a p:first-child {
            color: #02813c;
            font-size: 40px;
        }

        .inner-header .logo a p:last-child {
            font-size: 28px;
        }

        .inner-header .logo a p:last-child span {
            font-weight: bold;
            font-size: 32px;
            color: #ff6600;


        }






        .inner-header .gnb {
            display: flex;
            justify-content: flex-start;
            font-size: 30px;
            position: relative;
            left: -150px;

        }

        .inner-header .gnb li {
            display: inline-block;
            margin: 0 10px;
            padding: 20px;
            /* border: 1px solid #fff; */
            font-size: 22px;
        }

        .inner-header .tnb {
            display: flex;
            /* border: 1px solid red; */
            justify-content: flex-end;
            align-items: center;
        }

        .inner-header .tnb li:first-child {
            font-size: 20px;
            width: fit-content;
            height: 80px;
            /* border: 1px solid yellow; */
            /* margin-top: -40px; */
            position: relative;
            top: -5px;
            line-height: 80px;
        }


        .inner-header .tnb li:nth-child(2) {
            margin-right: 15px;
            /* border: 1px solid orange; */
            position: relative;
            top: -8px;
        }

        .inner-header .tnb li:nth-child(3) {
            margin-top: 15px;
            width: 50px;
            height: 50px;
        }

        .inner-header .tnb li {
            display: inline-block;
            /* margin-right: 10px; */
            /* background: lime; */
        }

        .inner-header .tnb li:nth-child(4) {
            display: flex;
            flex-direction: column;
            align-items: center;
            /* border: 1px solid orange; */
            margin-top: -20px;
            font-size: 15px;
        }





        .dropdown {
            width: fit-content;
            margin: 0 auto;
            position: relative;
        }

        #drop-content {
            display: none;
            position: absolute;
            z-index: 99;
        }

        #drop-content a {
            display: block;
            font-size: 20px;
            background: #fff;
            color: #3600ac;
            text-shadow: 1px 1px 1px #3d4451;
            text-decoration: none;
            border-radius: 10px;
            width: 170px;
            padding: 20px 25px;
            margin-top: 2px;
        }

        #drop-content a:hover {
            background: #ead0f5;
            color: #fff;

        }
    </style>



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
                            <p><i class="fa-solid fa-mountain-sun"></i></p>
                            <p>CAMP<span>KING</span></p>
                        </a>
                    </div>

                    <nav class="gnb">
                        <ul>
                            <li><a href="/jeju-camps/notices">공지사항</a></li>
                            <li><a href="/jeju-camps/info">캠핑장</a></li>
                            <li><a href="/jeju-camps/parties">같이갈사람</a></li>

                        </ul>
                    </nav>

                    <nav class="tnb">
                        <ul>

                            <li>
                                <p>
                                    <c:if test="${login == null}">
                                        침입자
                                    </c:if>
                                    <c:if test="${login != null}">
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
                                                d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                                        </svg>
                                        <span class="badge badge-xs badge-primary indicator-item">999+</span>
                                    </div>
                                </button>
                            </li>

                            <li>
                                <div class="profile dropdown">
                                    <button class="smbtn">
                                        <div class="profile-box">
                                            <c:if test="${login == null}">
                                                <img src="/assets/header/img/soongu.png" alt="미로그인">
                                            </c:if>
                                            <c:if test="${login != null}">
                                                <img src="/local${login.profile}" alt="프사">
                                            </c:if>
                                        </div>
                                    </button>
                                    <div id="drop-content">
                                        <a href='#'>마이페이지</a>
                                        <a href='#'>로그아웃</a>
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




    <script>
        // drop down
        const $dropContent = document.getElementById("drop-content");
        const $btn = document.querySelector('.smbtn');

        $btn.onclick = () => {
            $dropContent.style.display = "block";
        };

        $btn.parentElement.onmouseleave = () => {
            $dropContent.style.display = "none";
        };
    </script>




</body>

</html>