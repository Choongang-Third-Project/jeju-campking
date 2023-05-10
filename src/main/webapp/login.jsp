<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- css -->
    <link rel="stylesheet" href="login.css">
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />

    <!-- js -->
<%--    <script src="js/login.js" defer></script>--%>
    <script src="https://cdn.tailwindcss.com" defer></script>

</head>
<body>
<div class="wrap">
    <!-- header -->

    <!-- main -->
    <div class="login-main">
        <div class="login">
            <div class="login-title">
                <h1>로그인</h1>
            </div>
            <!-- 전송할 데이터 -->
            <form action="/member/login" name="loginForm" method="post">
                <div class="id-pw-wrap">
                    <!-- id input -->
                    <div class="login-id">
                        <input type="text" name="account" id="login-id-input" class="login-id-input login-input" placeholder="아이디"/>
                        <label class="form-label" for="login-id-input"></label>
                    </div>

                    <!-- Password input -->
                    <div class="password-id">
                        <input type="password" name="password" id="login-password-input" class="login-password-input login-input" placeholder="비밀번호" />
                        <label class="form-label" for="login-password-input"></label>
                    </div>
                </div>
                <div class="login-auto-check">
                    <label for="auto-login">
                        <span>
                        <i class="fas fa-sign-in-alt"></i>
                        자동 로그인
                        <input type="checkbox" id="auto-login" name="autoLogin">
                        </span>
                    </label>
                </div>
<%-- TODO : 아이디 찾기, 비밀번호 찾기 기능 추가해야 합니다. --%>
                <!-- 2 column grid layout for inline styling -->
                <div class="login-find">
                    <div class="login-find-id login-find-text">
                        <!-- Simple link -->
                        <a href="#">아이디 찾기</a>
                    </div>
                    <div class="login-find-password login-find-text">&nbsp;&nbsp;|&nbsp;
                        <!-- Simple link -->
                        <a href="#">비밀번호 찾기</a>
                    </div>
                    <div class="login-sign-up login-find-text">&nbsp;&nbsp;|&nbsp;
                        <!-- Simple link -->
                        <a href="signup.jsp">회원가입</a>
                    </div>
                </div>


                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block login-btn">로그인</button>
            </form>
        </div>
    </div>
    <!-- footer -->
    <footer class="login-footer">
        <div class="logo">로고</div>
        <div class="copyright">
            <span class="copyright-text">Copyright © 601 Corp. All Rights Reserved.</span>
        </div>
    </footer>
</div>

<script>
    const loginResult = '${msg}';

    if (loginResult == "FAIL") {
        alert('아이디 또는 비밀번호가 틀렸습니다.')
    }
</script>
</body>
</html>