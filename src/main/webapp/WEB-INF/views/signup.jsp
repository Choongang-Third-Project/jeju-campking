<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <%@ include file = "../include/static-head.jsp "%>
    
    <link rel="stylesheet" href="/assets/signup/css/signup.css">


</head>

<body>



    <div class="wrapper">

        <div>
            <h1><i class="fa-solid fa-tree"></i> CAMP KING <i class="fa-solid fa-tree"></i></h1>
        </div>

        <div class="container">
            <!-- 아이디, 비밀번호 입력  -->
            <div class="box">
                <h2><label for="member-id">아이디</label></h2>
                <input type="text" id="member-id" maxlength="20" class="input input-bordered w-full max-w-xs ">
            </div>

            <div class="box">
                <h2><label for="member-password1">비밀번호</label></h2>
                <input type="password" id="member-password1" maxlength="20" class="input input-bordered w-full max-w-xs">
            </div>

            <div class="box">
                <h2><label for="member-password2">비밀번호 재확인</label></h2>
                <input type="password" id="member-password2" maxlength="20" class="input input-bordered w-full max-w-xs">
            </div>


            <!-- 이름, 닉네임 입력 -->
            <div class="box">
                <h2><label for="member-name">이름</label></h2>
                <input type="text" id="member-name" maxlength="30" class="input input-bordered w-full max-w-xs">
            </div>

            <div class="box">
                <h2><label for="member-nickname">닉네임</label></h2>
                <input type="text" id="member-nickname" maxlength="10" class="input input-bordered w-full max-w-xs">
            </div>

            <!-- 생년월일 입력  -->

            <div class="box">
                <h2><label for="yy">생년월일</label></h2>

                <div id="birth_wrap">
                    <!-- birth yy -->
                    <div class="birth-yy">
                        <span class="box">
                            <input type="text" id="yy" maxlength="4" placeholder="년(4자)"
                                class="input input-bordered w-full max-w-xs">
                        </span>
                    </div>

                    <!-- birth mm -->
                    <div class="birth-mm">
                        <span class="box">
                            <select id="mm" class="select select-bordered w-full max-w-xs">
                                <option>월</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                    </div>

                    <!-- bith dd -->
                    <div class="birth-dd">
                        <span class="box">
                            <input type="text" id="dd" maxlength="2" placeholder="일" class="input input-bordered w-full max-w-xs">
                        </span>
                    </div>

                </div>

            </div>


            <!-- 성별 -->
            <div class="box">
                <h2><label for="member-gender">성별</label></h2>
                <select id="member-gender" class="input input-bordered w-full max-w-xs">
                    <option disabled selected>성별</option>
                    <option value="M">남자</option>
                    <option value="F">여자</option>
                </select>
            </div>


            <!-- 이메일 -->
            <div class="box">
                <h2><label for="member-email">이메일</label></h2>
                <input type="email" id="member-email" maxlength="50" class="input input-bordered w-full max-w-xs" placeholder="aaa@bbb.com">
            </div>

            <!-- 연락처 -->
            <div class="box">
                <h2><label for="member-phone">휴대전화</label></h2>
                <input type="text" id="member-phone" maxlength="13" class="input input-bordered w-full max-w-xs" placeholder="010-0000-0000">
            </div>

            <!-- 가입하기 버튼 -->
            <div class="btn-area">
                <button type="button" id="btn-join"><span>가입하기</span></button>
            </div>


        </div>
        

</body>

</html>