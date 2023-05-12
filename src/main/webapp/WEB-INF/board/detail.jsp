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
                <td>공지사항</td>
           </tr>
           <tr class="h-18 text-lg ">
            <!-- 게시판 제목 -->
                <td>${board.boardNumber}</td>
                 <td>${board.boardTitle}</td>
                 <td>${board.boardTime}</td>
                 <td>${board.memberNumber}</td>
            </tr>
            <tr>
                <td>
                    <!-- 30글자마다 줄바꿈 처리 -->
                    <!-- 게시판 내용 -->
                    <div class=" max-w-screen-md overflow-hidden">
              
                      ${board.boardContent}<br>
                       
                    </div>
                </td>
           </tr>
        </table>
        

        <div >
            <table class="table table-compact w-full ">
              <thead>
                <tr>
                  <th></th> 
                  <th>이 름</th> 
                  <th>댓 글</th> 
                  <th>날 짜</th> 
                  <th>수 정</th>
                  <th>삭 제</th>
                </tr>
              </thead> 
              <tbody>
                <tr>
                  <th>1</th> 
                  <td>Cy Ganderton</td> 
                  <td>Quality Control Specialist</td> 
                  <td>12/16/2020</td> 
                  <td><button class="btn btn-primary">수정</button></td> 
                  <td><button class="btn btn-secondary">삭제</button></td> 
                </tr>
                <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
                  <tr>
                    <th>1</th> 
                    <td>Cy Ganderton</td> 
                    <td>Quality Control Specialist</td> 
                    <td>12/16/2020</td> 
                    <td><button class="btn btn-primary">수정</button></td> 
                    <td><button class="btn btn-secondary">삭제</button></td> 
                  </tr>
          </div>

        <table class="table w-full">
            <tr>
                <th>윗글</th>
                <td><a href="#">해당글이 없습니다.</a></td>
            </tr>
            <tr>
                <th>아랫글</th>
                <td><a href="#">시스템 개선 및 서비스 점검 안내</a></td>
            </tr>
        </table>
    </div>
   
<script>

</script>
    
</body>
</html>