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
    
    <link rel="stylesheet" href="/assets/signup/css/signup.css">

    <script src="/assets/signup/js/signup.js" defer></script>

</head>

<body>



    <div class="wrapper">

        <div>
            <h1><i class="fa-solid fa-tree"></i> CAMP KING <i class="fa-solid fa-tree"></i></h1>
        </div>

        <form action="/member/signup" id="signUpForm" name="signUp" method="post">

            <div class="container">
                <!-- 이메일 -->
                <div class="box">
                    <h2><label for="email">이메일</label></h2>
                    <p>
                        <input type="email" id="email" name="memberEmail" maxlength="50" class="input input-bordered w-full max-w-xs" placeholder="aaa@naver.com">
                    </p>
                    <span id="emailChk"></span>
                </div>
                
                <!-- 비밀번호 입력  -->
                <div class="box">
                    <h2><label for="pw1">비밀번호</label></h2>
                    <p>
                        <input type="password" id="pw1" name="memberPassword" maxlength="20" class="input input-bordered w-full max-w-xs" placeholder="영문자, 숫자, 특수문자 포함 (8~15자)">
                    </p>
                    <span id="pwChk1"></span>
                </div>
    
                <div class="box">
                    <h2><label for="pw2">비밀번호 재확인</label></h2>
                    <p>
                        <input type="password" id="pw2" name="memberPasswordChk" maxlength="20" class="input input-bordered w-full max-w-xs" >
                    </p>
                    <span id="pwChk2"></span>
                </div>
    
    
                <!-- 이름, 닉네임 입력 -->
                <div class="box">
                    <h2><label for="name">이름</label></h2>
                    <p>
                        <input type="text" id="name" name="memberName" maxlength="30" class="input input-bordered w-full max-w-xs">
                    </p>
                    <span id="nameChk"></span>
                </div>
    
                <div class="box">
                    <h2><label for="nickname">닉네임</label></h2>
                    <p>
                        <input type="text" id="nickname" name="memberNickname" maxlength="10" class="input input-bordered w-full max-w-xs">
                    </p>
                    <span id="nicknameChk"></span>
                </div>
    
                <!-- 생년월일 입력  -->
    
                <div class="box">
                    <h2><label for="yy">생년월일</label></h2>
    
                    <div id="birth_wrap">

                        <input type="date" id="birth" name="memberAge" class="input input-bordered w-full max-w-xs">   
     
                    </div>
                    <div>
                        <span id="ageChk"></span>
                    </div>
                </div>
    
    
                <!-- 성별 -->
                <div class="box">
                    <h2><label for="gender">성별</label></h2>
                    <select id="gender" name="memberGender" class="input input-bordered w-full max-w-xs">
                        <option disabled selected>성별</option>
                        <option value="M">남자</option>
                        <option value="F">여자</option>
                    </select>
                    <span id="genderChk"></span>
                </div>
    
    
                <!-- 연락처 -->
                <div class="box">
                    <h2><label for="phone">휴대전화</label></h2>
                    <p>
                        <input type="text" id="phone" name="memberPhone" oninput="autoHyphen(this)" maxlength="13" class="input input-bordered w-full max-w-xs">
                    </p>
                    <span id="phoneChk"></span>
                </div>
    
                <!-- 가입하기 버튼 -->
                <div class="btn-area">
                    <input type="button" id="signup-btn" value="가입하기">
                    <input type="button" id="login-btn" value="바로 로그인하기">
                </div>
        </form>
        


    </div>
        

</body>

</html>