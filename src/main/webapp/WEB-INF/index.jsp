<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/index/css/index.css">
    <link rel="stylesheet" href="/assets/footer/css/footer.css">

        <!-- favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/header/img/camp.ico">
</head>
<body>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>



        <!-- header -->
    <header>
      <div class="navbar bg-base-100 fixed z-50">
        <div class="flex-1">
          <a class="btn btn-ghost normal-case text-xl">CAMP KING</a>
        </div>
        <div class="flex-none">
          <ul class="menu menu-horizontal px-1">
            <li><a href="/join">회원가입</a></li>
            <li><a href="/login">로그인</a></li>
          </ul>
        </div>
      </div>
    </header>
    <main>
      <!-- main -->
      
        <div class="h-screen bg-[url('./assets/index/img/camping-ga5ef4d1c8_1920.jpg')] bg-cover bg-center pt-20 flex justify-center items-center">
            <!-- <img src="/img/camping-ga5ef4d1c8_1920.jpg" class="bg-cover"> -->
            <div class="camp-box text-box text-gray-50 shadow-2xl  w-max border-current border-4 border-black ">
                <div class="p-4 text-4xl">언제 어디서나 캠핑을 하고 싶다면 CAMP KING</div>
            </div>
        </div>
        <div class="hero h-screen" style="background-image: url(./assets/index/img/index-getStart.jpg);">
            <div class="hero-overlay bg-opacity-60"></div>
            <div class="hero-content text-center text-neutral-content">
              <div class="max-w-md">
                <h1 class="mb-5 text-5xl font-bold">함께 가는 캠프</h1>
                <p class="mb-5">지금 이 시기가 캠핑하기 가장 적합한 시기이다.</p>
                <a href="/login"><button class="btn btn-primary">시작하기</button></a>
              </div>
            </div>
          </div>



        <div class="carousel w-full h-screen">
            <div id="slide1" class="carousel-item relative w-full">
              <img src="./assets/index/img//index-4.jpg" class="w-full" />
              <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
                <a href="#slide4" class="btn btn-circle">❮</a> 
                <a href="#slide2" class="btn btn-circle">❯</a>
              </div>
            </div> 
            <div id="slide2" class="carousel-item relative w-full">
              <img src="./assets/index/img/index-3.jpg" class="w-full" />
              <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
                <a href="#slide1" class="btn btn-circle">❮</a> 
                <a href="#slide3" class="btn btn-circle">❯</a>
              </div>
            </div> 
            <div id="slide3" class="carousel-item relative w-full">
              <img src="./assets/index/img/index-2.jpg" class="w-full" />
              <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
                <a href="#slide2" class="btn btn-circle">❮</a> 
                <a href="#slide4" class="btn btn-circle">❯</a>
              </div>
            </div> 
            <div id="slide4" class="carousel-item relative w-full">
              <img src="./assets/index/img/index-1.jpg" class="w-full" />
              <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
                <a href="#slide3" class="btn btn-circle">❮</a> 
                <a href="#slide1" class="btn btn-circle">❯</a>
              </div>
            </div>
          </div>
          
        </main>

          <!-- footer -->
      <!-- <footer class="footer p-10 bg-base-200 text-base-content">
        <div>
          <span class="footer-title">Services</span> 
          <a class="link link-hover" href="/board/list.jsp">board/list.jsp</a> 
          <a class="link link-hover" href="/board/write.html">board/write.html</a> 
          <a class="link link-hover"  href="/board/detail.html">board/detail.html</a> 
          <a class="link link-hover">Advertisement</a>
        </div> 
        <div>
          <span class="footer-title">Company</span> 
          <a class="link link-hover" href="/campBoard/list.jsp">campBoard/list.jsp</a> 
          <a class="link link-hover" href="/campBoard/detail.html">/campBoard/detail.html</a> 
          <a class="link link-hover">Jobs</a> 
          <a class="link link-hover">Press kit</a>
        </div> 
        <div>
          <span class="footer-title">Legal</span> 
          <a class="link link-hover">Terms of use</a> 
          <a class="link link-hover">Privacy policy</a> 
          <a class="link link-hover">Cookie policy</a>
        </div>
      </footer> 
      <footer class="footer px-10 py-4 border-t bg-base-200 text-base-content border-base-300">
        <div class="items-center grid-flow-col">
          <svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd" class="fill-current"><path d="M22.672 15.226l-2.432.811.841 2.515c.33 1.019-.209 2.127-1.23 2.456-1.15.325-2.148-.321-2.463-1.226l-.84-2.518-5.013 1.677.84 2.517c.391 1.203-.434 2.542-1.831 2.542-.88 0-1.601-.564-1.86-1.314l-.842-2.516-2.431.809c-1.135.328-2.145-.317-2.463-1.229-.329-1.018.211-2.127 1.231-2.456l2.432-.809-1.621-4.823-2.432.808c-1.355.384-2.558-.59-2.558-1.839 0-.817.509-1.582 1.327-1.846l2.433-.809-.842-2.515c-.33-1.02.211-2.129 1.232-2.458 1.02-.329 2.13.209 2.461 1.229l.842 2.515 5.011-1.677-.839-2.517c-.403-1.238.484-2.553 1.843-2.553.819 0 1.585.509 1.85 1.326l.841 2.517 2.431-.81c1.02-.33 2.131.211 2.461 1.229.332 1.018-.21 2.126-1.23 2.456l-2.433.809 1.622 4.823 2.433-.809c1.242-.401 2.557.484 2.557 1.838 0 .819-.51 1.583-1.328 1.847m-8.992-6.428l-5.01 1.675 1.619 4.828 5.011-1.674-1.62-4.829z"></path></svg>
          <p>ACME Industries Ltd. <br/>Providing reliable tech since 1992</p>
        </div> 
        <div class="md:place-self-center md:justify-self-end">
          <div class="grid grid-flow-col gap-4">
            <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="fill-current"><path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"></path></svg></a> 
            <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="fill-current"><path d="M19.615 3.184c-3.604-.246-11.631-.245-15.23 0-3.897.266-4.356 2.62-4.385 8.816.029 6.185.484 8.549 4.385 8.816 3.6.245 11.626.246 15.23 0 3.897-.266 4.356-2.62 4.385-8.816-.029-6.185-.484-8.549-4.385-8.816zm-10.615 12.816v-8l8 3.993-8 4.007z"></path></svg></a>
            <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="fill-current"><path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"></path></svg></a>
          </div>
        </div>
      </footer> -->

      
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
</html>