<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   
   
   
   <style>
        .divider {
            font-size: 30px;
            display: flex;
            align-items: center;
            margin-bottom: 50px;
        }

        .divider::before, .divider::after {
            flex: 1;
            content: '';
            padding: 0.5px;
            background-color: black;
            margin: 5px;
        }
        .wrapper{
            padding: 10px;
            border: 1px solid #000;
            width: 60%;
            margin: 0 auto;
        }
        .wrapper .title{
            font-size: 20px;
            font-weight: 700;
            font-family: monospace;
            margin-bottom: 30px;
        }
        .wrapper .author{
            display: flex;
            margin-bottom: 20px;
        }

        
        .wrapper .author .profile-image{
            width: 50px;
            height: 50px;
            background: blue;
            margin-right: 20px;
        }


        .button-group{
            display: flex;
            margin: 0 auto;
            flex-direction: column;
            margin-top: 50px;
            margin-bottom: 50px; 
            width: 50%;
            
            
        }

        .prev-next-container{
            border: 1px solid #000;
            margin-bottom: 20px;
            padding: 20px;
        }

        .prev-next-container div{
            margin-bottom: 20px;
            font-size: 20px;
            font-family: monospace;
            font-weight: 700;
        }

        









        .reply{
            padding: 30px;
            border: 1px solid #000;
        }
        
        
        .reply-content{
            display: flex;
            padding: 10px;
        }

        .reply-content .reply-profile{
            width: 50px;
            height: 50px;
            background: blue;
        }

        .reply-content input{
            margin-left: 20px;
            width: 100%;
        }
        .reply .reply-button{
            margin-right: 20px;
            display: flex;
            flex-direction: row-reverse;
            color: black;
        }
      


        .reply-container{
           
            padding: 20px;
        }

        .reply-container .reply-display {
            position: relative;
            margin-bottom: 20px;
            
        }

        .reply-container .reply-display .reply-title{
            /* width: 100%; */
            display: flex;
        }

        .reply-container .reply-display .reply-title .reply-profile{
            width: 50px;
            height: 50px;
            background: blue;

        }

        
        .reply-container .reply-display .reply-title .reply-btn-group{
            /* background: #000; */
            position: absolute;
            right: 50px;

        }
        

    </style>
</head>
<body>
    
    <div class="divider">캠핑 게시판</div>
    <div class="wrapper">
        <div class="author">
            <div class="profile-image">
                프로필 이미지
            </div>
            <div class="notice-info">
                <div class="row"><i class="fa-solid fa-bookmark"></i> <span class="board-no" id="boardNumber">${board.boardNumber}</span> ㆍ<i class="fa-regular fa-user"></i> <span class="user-name">${board.memberNickname}</span></div>
                <div class="row"><i class="fa-solid fa-face-smile"></i> <span class="good" id="good">${board.boardRecommend}</span>ㆍ<i class="fa-solid fa-calendar"></i> <span class="date"></span>ㆍ<i class="fa-solid fa-users"></i> <span class="read">${board.boardView}</span> </div>
            </div>
        </div>
        <div class="title">
            ${board.boardTitle}
        </div>
        <div class="content">
            <p>
                ${board.boardContent}
            </p>
        </div>
        <div class="button-group">
            <button class="btn btn-primary" id="up-btn">추천</button>
            <button class="btn btn-secondary" id="down-btn">비추천</button>
            <button class="btn" onclick="location.href='/jeju-camps/notices'">목록조회</button>
        </div>
        
        <div class="prev-next-container">
            <div class="prev-box">이전 게시판 : 
                <c:choose>
                    <c:when test="${p.boardTitle eq null}" >
                        <span>이전글이 없습니다..</span>
                    </c:when>
                    <c:otherwise>
                        <a href="/jeju-camps/notices/details?boardNumber=${p.boardNumber}">${p.boardTitle}</a> 
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="next-box">다음 게시판 : 
                <c:choose>
                    <c:when test="${n.boardTitle eq null}" >
                        <span>다음글이 없습니다..</span>
                    </c:when>
                    <c:otherwise>
                        <a href="/jeju-camps/notices/details?boardNumber=${n.boardNumber}">${n.boardTitle}</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>



        <div class="reply">
            <div class="reply-content">
                <div class="reply-profile">
                    프로필
                </div>
                 <input class="input input-bordered input-info w-full" type="text" placeholder="댓글창">
            </div>
            <div class="reply-button">
                <button class="btn btn-primary">댓글 쓰기</button>
             </div>
        </div>

        <div class="reply-container" id="reply-box">
            
        </div>

        



    </div>
    <script>
        const $boardNumber = '${board.boardNumber}';
        const $upBtn = document.getElementById('up-btn');
        const $downBtn = document.getElementById('down-btn');

        
        // 추천 기능
        $upBtn.onclick = e => {
            const payload = {
				boardNumber: $boardNumber
                };

		        console.log(payload);
               
                const requestInfo = {
                    method: 'POST',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify(payload)
                };

                // # 서버에 POST요청 보내기
                fetch('/jeju-camps/notices/up/' + $boardNumber , requestInfo)
                    .then(res => res.json())
                      .then(responseResult => {
                    // console.log(responseResult);
                        //alert('추천 성공');
                        toastr.success('추천 했어요!!!');
                        renderRecommend(responseResult);
                     });

        }
        // 비추천 기능
        $downBtn.onclick = e => {
            const payload = {
				boardNumber: $boardNumber
                };

		        console.log(payload);
               
                const requestInfo = {
                    method: 'POST',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify(payload)
                };

                // # 서버에 POST요청 보내기
                fetch('/jeju-camps/notices/down/' + $boardNumber , requestInfo)
                    .then(res => res.json())
                      .then(responseResult => {
                    // console.log(responseResult);
                        //alert('비추천 성공');
                        toastr.error('비추천 했어요!!!');
                        renderRecommend(responseResult);
                     });

        }

        function renderRecommend(recommend){
            console.log(recommend);
            document.getElementById('good').innerText = recommend;
           
        }



        // 댓글 목록 렌더링 함수
        function renderReplyList(
            list
         ) {
             console.log(list);
            let tag = '';

            if (list === null || list.length === 0) {
                tag += "<div id='#' class='card-body'>댓글이 아직 없습니다! ㅠㅠ</div>";
            } else {
                for (let con of list){
                    let {replyNumber, replyContent, replyTime, boardNumber, memberNumber, memberNickname} = con;
                            
                    tag+='<div class="reply-display">';       
                    tag+='    <div class="reply-title">';
                    tag+='<div class="reply-profile">';
                    tag+='    프사';
                    tag+='</div>'; 
                    tag+='<div class="reply-author">'
                       tag+='<span>'+memberNickname+'</span>';
                    tag+='</div>'; 
                    tag+='<div class="reply-btn-group">';
                        tag+='<button class="btn">수정</button>';
                        tag+='<button class="btn">삭제</button>';
                    tag+='</div>';
                  tag+='</div>';
                tag+='<div class="reply-text">'+replyContent+'</div>';
            tag+='</div>';
                }
            }


            // 생성된 캠핑 tag 렌더링
            document.getElementById('reply-box').innerHTML = tag;
            //renderPage(pageInfo);
           
        }




        ////http://localhost:8181/jeju-camps/notices/detail/reply/995
        
        // 댓글 목록 불러오기 함수 
        function getReplyList() {
            fetch('/jeju-camps/notices/detail/reply/' + $boardNumber)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderReplyList(responseResult);
               });
            }






        
        //========= 메인 실행부 =========//
        (function() {

            let date = new Date('${board.boardTime}').toLocaleDateString();
            document.querySelector('.date').innerText = date;
             // 첫 댓글 페이지 불러오기
             getReplyList();
             console.log('${p.boardTitle}');
            
        })();

    </script>
    
</body>
</html>