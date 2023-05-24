<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jeju Camp King</title>
<%@ include file = "../include/static-head.jsp" %>
   
    <link rel="stylesheet" href="/assets/board/css/list.css">
    <!-- footer css -->
    <link rel="stylesheet" href="/assets/footer/css/footer.css">
    
    <style>
        #campBoard:hover{
            background-color: #fba700;
        }
    </style>
</head>
<body>
    
     <!-- 헤더 -->
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

    <!-- 게시판 시작 -->
    <main>
        <div class="input-box flex  mb-1 justify-center ">
            
            <form action="#" method="post" class="flex">
                <select class="select select-accent min-w-max max-w-xs" disabled>
                    <option selected>제목</option>
                    <option>내용</option>  
                    <option>제목+내용</option>
                </select>
                <input type="text" value="${s}" name="camp-search" placeholder="Type here" class="input input-bordered input-info w-96" id="camp-search" />
                <input type="submit" value="검색" disabled class="input input-bordered">

            </form>
        </div>

        <div id="camp-board">
            
            
        </div>
      

        
    </main>

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



    
    <script>
        
        const $idInput = document.getElementById('camp-search');



       



        // 검색창 키업될때마다 서버로 갱신하기
        $idInput.onkeyup = e => {
            console.log($idInput.value);
            if($idInput.value.length===0){
                getCampList();
                return;
            }


            // fetch(URL + '/' + bno + '/page/' + page)
            fetch('/jeju-camps/info/' + $idInput.value)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderCampList(responseResult);
             });

        }




        // 캠핑 목록 렌더링 함수
         function renderCampList(
            list
        ) {
            // console.log(list);
            let tag = '';

            if (list === null || list.length === 0) {
                tag += "<div id='#' class='card-body'>캠핑이 아직 없습니다! ㅠㅠ</div>";
            } else {
                for (let camp of list){
                    const {campNumber, campAddress, campName, campTypeNormal, campTypeCar, campTypeCaravan, campTypeGlamping} = camp;
                    tag+='<a href="/jeju-camps/info/details?title='+campName+'">';
                    tag+='<div id="campBoard" class="card lg:card-side bg-base-100 shadow-xl relative mb-1 h-40">';       
                    tag+='<div id="#" class="self-center pl-3" >'+ campNumber+'</div>';
                    tag+='<div class="card-body">';
                    tag+='<h2 class="card-title" id="campName">'+campName+'</h2>';
                    tag+='<div class="absolute top-8 right-0 w-2/6 flex pr-3">';
                        tag+='<div><i class="fa-solid fa-circle-user"></i>&nbsp;<span id="#">admin</span></div>';
                    tag+='</div>';
                    tag+='<p> 주소 : '+ campAddress + ' | 타입 : ' + campTypeNormal +' '+ campTypeCar +' '+ campTypeCaravan +' '+ campTypeGlamping +'</p>';
                    tag+='<div class="card-actions justify-end">';
                      tag+='<button class="btn btn-primary">자세히 보기</button>';

                      tag+='</div>';
                      tag+='</div>';
                    tag+='</div>';
                    tag+='</div>';
                    tag+='</a>';
                }
            }


            // 생성된 캠핑 tag 렌더링
            document.getElementById('camp-board').innerHTML = tag;
           
        }
        
         // 캠핑 목록 불러오기 함수 
         function getCampList() {

            console.log("'${s}'");
            if('${s}'===''){
            fetch('/jeju-camps/info/all-list')
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderCampList(responseResult);
               });
            } else{
                fetch('/jeju-camps/info/' + '${s}')
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderCampList(responseResult);
               });
            }



            }

            


         //========= 메인 실행부 =========//
         (function() {
             // 첫 댓글 페이지 불러오기

          
            getCampList();
             


        })();

        


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




