<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jeju Camp King</title>
    <%@ include file = "../include/static-head.jsp" %>
    <style>
      html, body {width:100%;height:100%;margin:0;padding:0;} 
      .map_wrap {position:relative;overflow:hidden;width:100%;height:350px;}
      .radius_border{border:1px solid #919191;border-radius:5px;}     
      .custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:130px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
      .custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
      .custom_typecontrol .asd-btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
      .custom_typecontrol .asd-btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
      .custom_typecontrol .asd-btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
      .custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
      .custom_typecontrol .selected_btn:hover {color:#fff;}   
      .custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
      .custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
      .custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
      .custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}            
      </style>

          

       <!-- fontawesome icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- footer css -->
    <link rel="stylesheet" href="/assets/footer/css/footer.css">
   
    
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
                            <a href='/jeju-camps/mypage/${LOGIN.memberNumber}'>
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

    <div class="detail-board w-3/5" style="margin: 0 auto;">
        

        <table class="table w-full overflow-x-hidden mb-9">
           <tr class="h-24 text-3xl">
                <td>캠프장</td>
           </tr>
           <tr class="h-18 text-lg ">
            <!-- 게시판 제목 -->
                 <td>${campBoard.campName}</td>
            </tr>
            <tr>
                <td>
                    <!-- 30글자마다 줄바꿈 처리 -->
                    <!-- 게시판 내용 -->
                    <div class=" max-w-screen-md overflow-hidden">
                      
                      <div class="map_wrap">
                        <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
                        
                        <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
                        <div class="custom_zoomcontrol radius_border"> 
                            <span onclick="zoomIn()"><i class="fa-solid fa-plus"></i></span>  
                            <span onclick="zoomOut()"><i class="fa-solid fa-minus"></i></span>
                        </div>
                    </div>
                        주소 : ${campBoard.campAddress}<br>
                        타입 : ${campBoard.campTypeNormal} ${campBoard.campTypeCar} ${campBoard.campTypeCaravan} ${campBoard.campTypeCaravan} ${campBoard.campTypeGlamping}<br>
                        로드뷰<br><br>
                        <div id="roadview" style="width:100%;height:300px;"></div>
                   
                    </div>
                </td>
           </tr>
        </table>
        <div>
            <button class="btn w-full" onclick="history.back()">캠핑 목록 보기</button>
        </div>

        
    </div>

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


    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9cb138481a4bea0f094c2e5d4640c3e"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        
        center: new kakao.maps.LatLng('${campBoard.campLatitude}', '${campBoard.campLongitude}'),
        // center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체
var position = new kakao.maps.LatLng('${campBoard.campLatitude}', '${campBoard.campLongitude}');

// 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
roadviewClient.getNearestPanoId(position, 50, function(panoId) {
    roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
});


// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng('${campBoard.campLatitude}', '${campBoard.campLongitude}'); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);



function setMapType(maptype) { 
    var roadmapControl = document.getElementById('btnRoadmap');
    var skyviewControl = document.getElementById('btnSkyview'); 
    if (maptype === 'roadmap') {
        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
        roadmapControl.className = 'selected_btn';
        skyviewControl.className = 'btn';
    } else {
        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
        skyviewControl.className = 'selected_btn';
        roadmapControl.className = 'btn';
    }
}

// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomIn() {
    map.setLevel(map.getLevel() - 1);
}

// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomOut() {
    map.setLevel(map.getLevel() + 1);
}



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