<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jeju Camp King</title>

    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>
    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="/assets/header/img/camp.ico">
    <!-- header, footer css -->
    <link rel="stylesheet" href="/assets/header/css/header.css">
    <link rel="stylesheet" href="/assets/footer/css/footer.css">
    <!-- toaster set -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css"
        integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



    <style>
    @import url('https://fonts.googleapis.com/icon?family=Material+Icons');

        #wrapper {
            position: relative;
        }
        #wrapper .container {
            border: 1px solid #000;
            width: 80%;
        }


        #wrapper #back-btn {
            position: fixed;
            bottom: 5%;
            left: 4.5%;
        }


        /* -------- begin member -------- */
        #wrapper .container .member {
            height: 150px;
        }

        #wrapper .container .member .member-img {
            margin-right: 50px;
        }

        #wrapper .container .member .member-img .avatar .img {
            transition: 0.5s;
            box-shadow: 5px 5px 5px 5px rgb(0, 0, 0);
        }

        #wrapper .container .member .member-img .avatar .img:hover {
            transform: scale(1.2);
            cursor: pointer;
        }

        /* -------- end member -------- */



        /* -------- begin camp-img -------- */
        #wrapper .container .camp-img {
            height: 400px;
            margin: 20px 0;
        }

        #wrapper .container .camp-img .img {
            border: 1px solid white;
            border-radius: 15px;
            overflow: hidden;
        }

        /* -------- end camp-img -------- */




        /* -------- begin party-date -------- */
        #wrapper .party-date {
            height: 200px;
            margin-bottom: 10px;

            display: flex;
            flex-direction: column;
            justify-content: space-between;

        }

        #wrapper .party-date .start-date {
            display: flex;
            justify-content: center;
            align-items: center;

            font-weight: 700;
        }

        #wrapper .party-date .end-date {
            display: flex;
            justify-content: center;
            align-items: center;

            font-weight: 700;
        }



        /* -------- end party-date -------- */


        /* -------- begin content-box -------- */


        #wrapper .content-box {
            width: 80%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        #wrapper .content-box .title {
            width: 100%;
            text-align: center;
            font-size: 1.5em;
            font-weight: 700;
            margin: 15px;

            padding-bottom: 10px;
            border-bottom: 1px solid #000;
        }

        #wrapper .content-box .content {
            width: 100%;
            margin: 15px;
            line-height: 1.8;
            padding-bottom: 30px;
            border-bottom: 1px solid #000;
        }


        /* -------- end content-box -------- */







        /* -------- start btn-box -------- */

        #wrapper .btn-box {
            margin: 15px;
        }

        /* -------- end btn-box -------- */




        /* -------- start join modal -------- */

        .party-join .party-chat {
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }

        .party-join .party-chat .content-box {
            width: 100%;
            height: 30px;

            margin-top: 25px;
            padding-bottom: 10px;

            border-bottom: 1px solid #000;
        }


        .party-join .party-chat .chat-box {
            height: 70%;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .party-join .party-chat .chat-box .chat {
            height: 100%;

            text-align: center;
            margin-bottom: 10px;

            display: flex;
        }

        .party-join .party-chat .chat-box .chat .message {
            width: 100%;
            height: 100%;

            overflow: scroll;
        }

        .party-join .party-chat .input-box {
            width: 80%;

            display: flex;
            justify-content: center;
            flex-direction: row;
            align-items: center;
        }


        .party-join .party-chat .input-box .btn {
            margin: 10px 0px 10px 10px;
        }

        /* -------- end join modal -------- */







        /* -------- start modify modal -------- */

        #modify-container {
            /* border: 1px solid red; */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        #modify-container #modify-title {
            /* border: 1px solid red; */
        }

        #modify-container #total { 
            margin-top: 5px;
            text-align: center;
            /* border: 1px solid red; */
        }
        #modify-container #title {
            margin: 15px;
        }
        
        #modify-container .date-box {
            /* border: 1px solid red; */
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            margin: 15px;
        }

        #modify-container .dropdown-label {
            font-size: 10px;
            /* margin : 10px; */
            margin-top: 15px;
            margin-bottom: 10px;
            font-weight: bold;
            color: rgb(50, 50, 50);
        }
        
        #modify-container .dropdown {
            position: relative;
            display: inline-block;
        }

        #modify-container .dropbtn_icon {
            font-family: 'Material Icons';
        }

        #modify-container .dropbtn {
            display: block;
            border: 2px solid rgb(94, 94, 94);
            border-radius: 4px;
            background-color: #fcfcfc;
            font-weight: 400;
            color: rgb(124, 124, 124);
            padding: 12px;
            width: 240px;
            text-align: left;
            cursor: pointer;
            font-size: 10px;
            z-index: 1;
            position: relative;
        }
        #modify-container .camp-box {
            /* border: 1px solid red; */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: 15px;
        }

        #modify-container .dropdown-content {
            display: none;
            font-weight: 400;
            background-color: #fcfcfc;
            min-width: 240px;
            border-radius: 8px;
            height: 160px;
            overflow: scroll;
            box-shadow: 0px 0px 10px 3px rgba(190, 190, 190, 0.6);
        }
        
        #modify-container .dropdown-content::-webkit-scrollbar {
            width: 5px;
            height: 10px;
        }
        
        #modify-container .dropdown-content::-webkit-scrollbar-thumb {
            border-radius: 2px;
            background-color: rgb(194, 194, 194)
        }
        
        #modify-container .dropdown-content div {
            display: block;
            text-decoration: none;
            color: rgb(37, 37, 37);
            font-size: 10px;
            padding: 12px 20px;
        }
        
        #modify-container .dropdown-content div:hover {
            background-color: rgb(226, 226, 226);
        }
        
        #modify-container .dropdown-content.show {
            display: block;
        }
        
        #modify-container .container {
            font-family: 'Black Han Sans', sans-serif;
        }
        
        #modify-container .size-box { 
            display: flex;
            justify-content: center;
            flex-direction: row;
            margin: 15px;
        }

        #modify-container .size-title { 
            margin-right: 20px;
        } 

        #modify-container h2 {
            font-size: 20px;
        }
        
        #modify-container .total {
            font-size: 15px;
        }
        
        #modify-container .form-group {
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            
            /* border: 1px solid red; */
            margin: 15px;
            /* width: 100%; */
            
            font-size: 15px;
        }
        #modify-container .form-group .modify-content { 
            /* border: 1px solid red; */
            margin: 0px 20px 20px 20px;
        }
        
        #people_count {
            width: 100px;
        }

        /* -------- end modify modal -------- */











        /* -------- start btn-box hover -------- */

        #wrapper .container .btn-box .btn-remove .btn {
            transition: 0.5s;
        }

        #wrapper .container .btn-box .btn-remove:hover .btn {
            box-shadow: 5px 5px 5px violet;
            transform: scale(1.2);
        }

        #wrapper .container .btn-box .btn-join .btn {
            transition: 0.5s;
        }

        #wrapper .container .btn-box .btn-join:hover .btn {
            box-shadow: 5px 5px 5px rgb(93, 67, 93);
            transform: scale(1.2);
        }

        #wrapper .container .btn-box .btn-modify .btn {
            transition: 0.5s;
        }

        #wrapper .container .btn-box .btn-modify:hover .btn {
            box-shadow: 5px 5px 5px rgb(59, 135, 210);
            transform: scale(1.2);
        }

        /* -------- end btn-box hover -------- */





    </style>

</head>

<body>

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
                        <div class="profile dropdowns">
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
                                <a href='/jeju-camps/mypage/${LOGIN.memberNumber}'>마이페이지</a>
                                <a href='/member/logout'>로그아웃</a>
                            </div>
                        </div>
                    </li>
    
                    <li> 오늘은 어디로 떠나세요?</li>
    
                </ul>
            </nav>
    
    
        </div>
      </header>



    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>


    <div id="wrapper" class="flex justify-between flex-col items-center p-10">


        <div id="back-btn" class="back-btn">
            <a href="/jeju-camps/parties">
                    <button class="btn">
                        <i class="fa-solid fa-right-from-bracket fa-rotate-180"></i>
                     </button>
                </a>
        </div>

        <div class="container flex justify-between flex-col items-center h-full">



            <!-- 작성자 사진과 닉네임 -->
            <div class="member w-full flex justify-center flex-row items-center h-35">
                <!-- 작성자 사진 -->
                <div class="member-img h-full flex justify-center items-center">

                    <div class="avatar">
                        <div class="img w-24 rounded-full">
                            <!-- <img id="profile" src="/assets/party/img/profile.png" /> -->
                            <c:if test="${detail.profileImage == null}">
                                <img src="/assets/mypage/img/profile.png" alt="사진없음">
                            </c:if>
                            <c:if test="${detail.profileImage != null}">
                                <img src="/local${detail.profileImage}" alt="프사">
                            </c:if>
                        </div>
                    </div>

                </div>
                <!-- 작성자 닉네임 -->
                <div id="member-number" class="member-nickname h-full flex justify-center items-center">${detail.memberNickname}</div>
            </div>



            <!-- 캠프 타입 사진 -->
            <div class="camp-img w-full flex justify-between flex-col items-center h-72">
                <!-- 캠프 사진 -->
                <div class="img h-full">
                    <div class="img h-full">

                        <c:if test="${type eq 'glamping'}">
                            <img id="cmap-img" src="/assets/home/img/sm_glamping.jpg" class="h-full">
                        </c:if>
                        <c:if test="${type eq 'caravan'}">
                            <img id="cmap-img" src="/assets/home/img/sm_caraban.jpg" class="h-full">
                        </c:if>
                        <c:if test="${type eq 'car'}">
                            <img id="cmap-img" src="/assets/home/img/sm_car.jpg" class="h-full">
                        </c:if>
                        <c:if test="${type eq 'normal'}">
                            <img id="cmap-img" src="/assets/home/img/sm_normal.jpg" class="h-full">
                        </c:if>
    
                    </div>
                </div>
            </div>



            <!-- 여행 시작날짜와 종료 날짜와 인원 -->
            <div class="party-date flex w-full flex justify-center flex-col items-center">

                <div class="date flex justify-center flex-row items-center">
                    <!-- 여행 시작 날짜 -->
                    <div class="start-date grid h-20 bg-base-300 rounded-box w-40">
                        <div title="start-date" class="date">
                            ${detail.partyStartDate}
                        </div>
                    </div>

                    <!-- ~~ -->
                    <div class="divider divider-horizontal">TO</div>

                    <!-- 여행 종료 날짜 -->
                    <div class="end-date grid h-20 flex bg-base-300 rounded-box w-40">
                        <div title="end-date" class="date">
                            ${detail.partyEndDate}
                        </div>
                    </div>
                </div>





                <!-- 여행 시작 날짜 기준 디데이 -->
                <div class="grid grid-flow-col gap-5 text-center auto-cols-max">
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span id="dateDay" style="--value:15;"></span>
                        </span>
                        days
                    </div>
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span id="dateHours" style="--value:10;"></span>
                        </span>
                        hours
                    </div>
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span id="dateMin" style="--value:24;"></span>
                        </span>
                        min
                    </div>
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span id="dateSec" style="--value:56;"></span>
                        </span>
                        sec
                    </div>
                </div>





            </div>



            <!-- 제목과 내용 -->
            <div class="content-box w-full flex justify-between flex-col items-center">
                <!-- 제목 -->
                <div id="title" class="title">${detail.partyTitle}</div>
                <!-- 내용 -->
                <div id="content" class="content">
                    ${detail.partyContent}
                </div>
            </div>


            <!-- 삭제, 참가, 수정 버튼 -->
            <div class="btn-box w-full flex justify-around flex-row items-center">


                <!-- 삭제 버튼 -->
                <div id="btn-remove" class="btn-remove">
                    <c:if test="${LOGIN.memberNumber == detail.memberNumber}">
                        <button class="btn btn-active btn-secondary">삭제하기</button>
                    </c:if>
                </div>

                <!-- 참가 버튼 -->
                <div class="btn-join">
                    <c:if test="${LOGIN.memberNumber != detail.memberNumber}">
                        <label for="my-modal-4" class="btn btn-active btn-primary">같이가기</label>
                    </c:if>
                </div>

                <!-- 수정 버튼 -->
                <div id="btn-modify" class="btn-modify">
                    <c:if test="${LOGIN.memberNumber == detail.memberNumber}">
                        <label for="modify-modal" class="btn btn-active btn-accent">수정하기</label>
                    </c:if>
                </div>
                
            </div>
            
        </div>
        
        <!-- party join modal -->
        <input type="checkbox" id="my-modal-4" class="modal-toggle" />
        <label for="my-modal-4" class="modal cursor-pointer">
            <label class="modal-box relative flex justify-center" for="">

                <!-- iphone -->
                <div class="party-join mockup-phone border-primary">
                    <div class="camera"></div>
                    <div class="display">
                        <div class="party-chat artboard artboard-demo phone-1 flex justify-between">

                            <div class="content-box flex justify-center items-center">
                                <div class="title"></div>
                            </div>

                            <div class="chat-box flex flex-col w-full">
                                <div class="chat grid h-80 w-4/5 card bg-base-300 rounded-box place-items-center">
                                    <div id="chat" class="message">

                                    </div>
                                </div>
                            </div>

                            <div class="input-box">
                                <textarea id="message" class="message textarea textarea-primary"
                                    placeholder="보낼 메시지를 입력하세요!"></textarea>
                                <button id="send-btn" class="btn btn-outline btn-primary fa-solid fa-paper-plane"></button>
                            </div>

                        </div>
                    </div>

                </div>

            </label>
        </label>



        <!-- modify modal -->
        <input type="checkbox" id="modify-modal" class="modal-toggle" />
        <label for="modify-modal" class="modal cursor-pointer">
            <label class="modal-box relative flex justify-center" for="">

                <!-- 글 작성하기 -->
                <div id="modify-container" class="container">
                    <h2 id="modify-title">🌲캠퍼 모집 수정🌲</h2>
                    <!-- <form action="write.jsp" method="post"> -->
                      <div id="total" class="total">
                        <label for="title">수정할 제목을 입력하세요</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <input type="text" class="form-control" id="inputTitle" placeholder="제목 입력(4-100)" name="title" maxlength="100"
                          required="required" pattern=".{4,100}">
                      </div>
                      <div class="camp-box">
                        <div class="dropdown-label" style="font-size: 20px;">
                            캠프장 목록 🐛
                        </div>
                        <div class="dropdownss">
                            <button class="dropbtn" onclick="dropdown()">
                            <span class="dropbtn_icon">...</span>
                            <span class="dropbtn_content">수정할 캠핑장 선택</span>
                            <span class="dropbtn_click"
                                style="font-family: Material Icons; font-size : 16px; color : #3b3b3b; float:right;">arrow_drop_down</span>
                            </button>
                        <div class="dropdown-content">
                          <div class="fastfood" onclick="showMenu(this.innerText)">1</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">2</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">3</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">4</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">5</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">6</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">7</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">8</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">9</div>
                          <div class="fastfood" onclick="showMenu(this.innerText)">10</div>
                        </div>
                      </div>
                      <br>
                      <label for="people">파티 정원</label>
                      <input type="text" class="form-control" id="people_count" placeholder="2명~10명" name="writer">
                      <br>
                      <label for="date" id="startdate">시작날짜를 선택하세요:
                        <input type="date" id="date" max="2025-12-31" min="2000-01-01" value="2023-05-21">
                      </label>
                      <label for="date" id="enddate">마감날짜를 선택하세요:
                        <input type="date" id="date" max="2025-12-31" min="2000-01-01" value="2023-05-21">
                      </label>
                
                      <div class="form-group">
                        <label for="content" class="modify-content">수정할 내용</label>
                        <!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
                        <!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
                        <textarea class="form-control" rows="5" id="content" name="content" placeholder="내용 작성"></textarea>
                      </div>
                      <button id="modifyBtn" type="submit" class="btn btn-default">수정 완료</button>
                    <!-- </form> -->
                  </div>



                  
                </label>
            </label>    
            
            
    </div>   
            
        
    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
        integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript">
        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "100",
            "hideDuration": "1000",
            "timeOut": "2000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }

    </script>


    <script>
        console.log('${detail}');
        const loginMember = +'${LOGIN.memberNumber}';
        const partyMember = +'${detail.memberNumber}';
        const $partyNumber = +'${detail.partyNumber}';
        
        const $sendBtn = document.getElementById('send-btn');
        const $enterKey = document.getElementById('message');

        const $deleteBtn = document.getElementById('btn-remove');


        $deleteBtn.addEventListener('click', (e) => {
            fetch('/jeju-camps/parties/' + $partyNumber,{
                method: 'DELETE'
            })
            .then(res => {
                if(res.status === 200){
                    toastr.success('성공적으로 삭제가 되었습니다.');
                    
                    setTimeout(() => {
                        location.href = "/jeju-camps/parties";
                    }, 2000);
                }
            });

        });


        $enterKey.addEventListener('keypress', (e) => {

            if (e.code === 'Enter') {

                const formData = new FormData();
                formData.append('partyMessageContent', document.getElementById('message').value);
                formData.append('partyMessageSender', loginMember);
                formData.append('partyMessageRecipient', partyMember);
                formData.append('partyNumber', $partyNumber);

                fetch('/jeju-camps/parties',{
                    method: 'POST',
                    body : formData
                }).then(res => {
                    if (res.status === 200){
                        toastr.success('메세지가 성공적으로 보내졌습니다!');
                    }
                })

                e.preventDefault();

                const $message = document.getElementById('message').value;
                document.getElementById('chat').innerHTML += '<br>' + $message + '<br>';
                document.getElementById('message').value = '';
            }

        })


        $sendBtn.addEventListener('click', e => {

                const formData = new FormData();
                formData.append('partyMessageContent', document.getElementById('message').value);
                formData.append('partyMessageSender', loginMember);
                formData.append('partyMessageRecipient', partyMember);
                formData.append('partyNumber', $partyNumber);

                fetch('/jeju-camps/parties',{
                    method: 'POST',
                    body : formData
                }).then(res => {
                    if (res.status === 200){
                        toastr.success('메세지가 성공적으로 보내졌습니다!');
                    }
                })
        });


        $sendBtn.addEventListener('click', e => {

            const $message = document.getElementById('message').value;
            document.getElementById('chat').innerHTML += '<br>' + $message + '<br>';
            document.getElementById('message').value = '';
        });








   //캠프장 드롭다운 메뉴
   window.onload = () => {
      document.querySelector('.dropbtn').onclick = () => {
        dropdown();
      }
    
      document.getElementsByClassName('fastfood').onclick = () => {
        showMenu(value);
      };
      dropdown = () => {
        var v = document.querySelector('.dropdown-content');
        var dropbtn = document.querySelector('.dropbtn')
        v.classList.toggle('show');
        dropbtn.style.borderColor = 'rgb(94, 94, 94)';
      }

      showMenu = (value, campNumber) => {

        var dropbtn_icon = document.querySelector('.dropbtn_icon');
        var dropbtn_content = document.querySelector('.dropbtn_content');
        var dropbtn_click = document.querySelector('.dropbtn_click');
        var dropbtn = document.querySelector('.dropbtn');

        dropbtn_icon.innerText = '';
        dropbtn_content.setAttribute('data-id',campNumber);
        dropbtn_content.innerText = value;
        dropbtn_content.style.color = '#252525';
        dropbtn.style.borderColor = '#3992a8';
      }
    }
    window.onclick = (e) => {
      if (!e.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");

        var dropbtn_icon = document.querySelector('.dropbtn_icon');
        var dropbtn_content = document.querySelector('.dropbtn_content');
        var dropbtn_click = document.querySelector('.dropbtn_click');
        var dropbtn = document.querySelector('.dropbtn');

        var i;
        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }
    //드롭다운 메뉴설정 끝


    //드롭다운(캠핑장) 랜더링 함수
    function rendercampList(list) {
      let tag = '';      

      for(let con of list){
        let {campName, campNumber} = con;
       tag += '<div class="fastfood" onclick="showMenu(this.innerText, '+campNumber+')">' +
        campName + "</div>";
       }
      //생성된 캠프장 tag 랜더링
      document.querySelector('.dropdown-content').innerHTML = tag;
    }
    //캠핑장 데려오기
    function getCampList() {
      fetch('/jeju-camps/info/all-list')
        .then(res => res.json())
        .then(responseResult => {
          console.log(responseResult);
          rendercampList(responseResult);
        })
    }

    // 게시글 등록 처리 이벤트 함수
    function makepartyRegisterClickEvent() {

      const $regBtn = document.getElementById('modifyBtn');
      //      Long $partyNumber;
      
      $regBtn.onclick = e => {
        // 게시물 제목
        const $title = document.getElementById('inputTitle');
        // 게시물 내용
        const $content = document.querySelector('.form-control');
        //  파티원 정원 수
        const $count = document.getElementById('people_count');
        //시작 날짜
        const $startdate = document.querySelector('#startdate input');
        //마감 날짜
        const $enddate = document.querySelector('#enddate input');
        // 캠핑장
        const $campNumber = document.querySelector('.dropbtn_content').dataset.id;
        

        // 클라이언트 입력값 검증
        if ($title.value.trim() === '') {
          toastr.error('게시글 제목은 필수입니다!');
          return;
        } else if ($content.value.trim() === '') {
            toastr.error('내용은 필수입니다!');
            return;
        } else if ($count.value < 2 || $count.value > 20) {
            toastr.error('캠퍼 정원은 2~20명 사이로 작성하세요!');
            return;
        } else if ($campNumber === null) {
            toastr.error('캠프장은 꼭 선택해야합니다');
            return;
        } else if ($startdate === '' || $enddate === '') {
            toastr.error('날짜를 꼭 선택해주세요 !');
        }

        console.log($startdate);
        console.log($startdate.value);
         // # 서버로 보낼 데이터
         const payload = {
          partyTitle: $title.value,
          partyContent: $content.value,
          partySize: $count.value,
          campNumber: $campNumber,
          partyStartDate: $startdate.value,
          partyEndDate: $enddate.value,
          partyNumber : $partyNumber
        };

        // # GET방식을 제외하고 필요한 객체
        const requestInfo = {
          method: 'PATCH', //&&& PATCH로 보내기
          headers: {
            'content-type': 'application/json'
          },
          body: JSON.stringify(payload)
        };
        
        const URL = "/jeju-camps/parties/"; //&&& PATCH URL



        // # 서버에 POST요청 보내기
        fetch(URL, requestInfo)
          .then(res => {

            if (res.status === 200) {
                toastr.success('성공적으로 수정이 되었습니다.');
                // 입력창 비우기
                $title.value = '',
                $content.value = '',
                $count.value = '',
                $campNumber.value = '',
                $startdate.value = '',
                $enddate.value = ''
                
                setTimeout(() => {
                    location.reload();
                    scrollTo(0,0);
                }, 2000);
                
            } else {
                toastr.error('게시글 수정에 실패함!');
            }
        });

      }
       
    };



    // 시간 함수
    function diffday() {
        const $partyStartDate = '${detail.partyStartDate}';
        const nowTime = new Date();
        const startTime = new Date($partyStartDate);

        const diff = startTime - nowTime;
        const diffDay = Math.floor(diff / (1000 * 60 * 60 * 24));
        const diffHours = Math.floor((diff / (1000 * 60 * 60)) % 24);
        const diffMin = Math.floor((diff / (1000 * 60)) % 60);
        const diffSec = Math.floor(diff / 1000 % 60);

        const $dateDay = document.getElementById('dateDay');
        const $dateHours = document.getElementById('dateHours');
        const $dateMin = document.getElementById('dateMin');
        const $dateSec = document.getElementById('dateSec');

        $dateDay.style = '--value:'+ diffDay + ';';
        $dateHours.style = '--value:'+ diffHours + ';';
        $dateMin.style = '--value:'+ diffMin + ';';
        $dateSec.style = '--value:'+ diffSec + ';';

    }

    diffday();
    setInterval(diffday, 1000);




    //메인 실행부
    (function() {

      //캠프 리스트 불러오기
      getCampList();

      // 게시글 등록 처리 이벤트
      makepartyRegisterClickEvent();
    })();

    </script>
</body>

</html>