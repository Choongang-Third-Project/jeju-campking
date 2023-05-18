<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    
</head>

<body>
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

</script>
    
</body>
</html>