<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" rel="stylesheet" type="text/css"/>
<!--    css -->
    <link rel="stylesheet" href="../../../resources/static/assets/mypage/css/mypage.css">
</head>
<body>
<div class="mp-wrap">
    <!-- header -->
    <header>

    </header>

    <div class="mp-box">
        <!-- 간단 회원 정보 (프로필사진, 닉네임, 회원등급) -->
        <div class="mp-info">
            <div class="mp-info-text">
                <div class="mp-info-content mp-info-profile w-24 mask mask-squircle">
                    <!-- 프로필 사진 -->
                    <img src="../../../resources/static/assets/mypage/img/profile.png"/>
                </div>
                <div class="mp-info-content"><span class="mp-info-name">닉네임</span> 님</div>
                <div class="mp-info-content mp-info-nickname">일반회원</div>
                <div class="mp-info-content mp-info-withdrawal">
                    <button class="btn btn-wide bg-primary">개인정보 수정</button>
                </div>
                <div class="mp-info-content">
                    <button class="btn btn-wide bg-primary">회원 탈퇴</button>
                </div>
            </div>
            <!-- 메인 -->
            <div class="mp-main-content mp-main">
                <!-- 내가 쓴 글 -->
                <div class="mp-main-content mp-board">
                    <div class="mp-board-title">내 게시글</div>
                    <div class="overflow-x-auto w-full mp-board-list">
                        <table class="table w-full mp-board-li">
                            <thead class="mp-board-header">
                            <tr>
                                <th>
                                    <label>
                                        <input type="checkbox" class="checkbox mp-board-check-all" />
                                    </label>
                                </th>
                                <th>게시판</th>
                                <th>내용</th>
                                <th>작성일자</th>
                                <th></th>
                            </tr>
                            </thead>
                            <!-- head -->
                            <tbody>
                            <tr>
                                <th>
                                    <label>
                                        <input type="checkbox" class="checkbox mp-board-check" />
                                    </label>
                                </th>
                                <td>
                                    <div class="flex items-center space-x-3">
                                        <div>
                                            <div class="font-bold">자유게시판</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <a href="" class=" class="mp-board-content"">
                                        게시글제목게시글제목게시글제목게시글제목
                                    </a>
                                </td>
                                <td>2023.05.01</td>
                                <th>
                                </th>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 쪽지함 -->
                <div class="mp-main-content mp-board">
                    <div class="mp-board-title">쪽지함</div>
                    <div class="mp-msg-btn btn-group grid grid-cols-2">
                        <button class="mp-msg-receive-btn btn btn-outline">받은 쪽지함</button>
                        <button class="mp-msg-send-btn btn btn-outline">보낸 쪽지함</button>
                    </div>
                    <!--                    <li class="mp-board-li">게시글1</li>-->
                    <!--                    <li class="mp-board-li">게시글2</li>-->
                    <!--                    <li class="mp-board-li">게시글3</li>-->
                    <div class="overflow-x-auto w-full mp-board-list">
                        <table class="table w-full mp-board-li">
                            <thead>
                            <tr>
                                <th>
                                    <label>
                                        <input type="checkbox" class="checkbox mp-msg-check-all" />
                                    </label>
                                </th>
                                <th>보낸사람</th>
                                <th>쪽지내용</th>
                                <th>보낸일자</th>
                                <th></th>
                            </tr>
                            </thead>
                            <!-- head -->
                            <tbody>
                            <tr>
                                <th>
                                    <label>
                                        <input type="checkbox" class="checkbox mp-msg-check" />
                                    </label>
                                </th>
                                <td>
                                    <div class="flex items-center space-x-3">
                                        <div>
                                            <div class="font-bold">보낸사람</div>
                                            <div class="text-sm opacity-50">일반회원</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="mp-msg-content">
                                    같이놀러가여ㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕ
                                </td>
                                <td>2023.05.01</td>
                                <th>
                                    <button class="btn btn-ghost btn-xs">답장하기</button>
                                </th>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <footer>

            </footer>
        </div>

        <%---------------------- 스크립트 ------------------------%>
        <script>
            
        </script>
</body>
</html>