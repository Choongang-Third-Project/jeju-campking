<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    

    <title>Jeju Camp King</title>
    <link rel="stylesheet" href="/assets/header/css/header.css">
    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="/assets/header/img/camp.ico">


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
            display: flex;
            justify-content: center;
            align-items: center;
            background: #FFF;
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
            display: flex;
            justify-content: center;
            align-items: center;
            /* background: #FFF; */
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
            /* background: blue; */

        }

        
        .reply-container .reply-display .reply-title .reply-btn-group{
            /* background: #000; */
            position: absolute;
            right: 50px;

        }

        /* footer */
        footer {
            height: 300px;
            padding: 25px;
            background: #3d3d3d;
            color: #b1b0b0;
        }

        footer .foot-wrapper h3 {
            padding-top: 20px;
            font-size: 2.2em;
            font-weight: 700;
            margin-bottom: 20px;
        }

        footer .foot-wrapper {
            text-align: center;
            justify-content: center;
            /* border: 1px solid #000; */
            height: 250px;

        }

        footer .foot-wrapper .foot p {
            padding: 10px;
            font-size: 13px;
        }
        

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
    
    <div class="divider">캠핑 게시판</div>
    <div class="wrapper">
        <div class="author">
            <div class="profile-image">
                <!-- 프로필 이미지 -->
                <c:if test="${LOGIN == null || LOGIN.profile == null}">
                    <img src="/assets/mypage/img/profile.png" alt="사진없음">
                </c:if>
                <c:if test="${LOGIN != null && LOGIN.profile != null}">
                    <img src="/local${LOGIN.profile}" alt="프사">
                </c:if>
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
                    <!-- 프로필 -->
                    <c:if test="${LOGIN == null || LOGIN.profile == null}">
                        <img src="/assets/mypage/img/profile.png" alt="사진없음">
                    </c:if>
                    <c:if test="${LOGIN != null && LOGIN.profile != null}">
                        <img src="/local${LOGIN.profile}" alt="프사">
                    </c:if>
                </div>
                 <input class="input input-bordered input-info w-full" id="replyWriteBox" type="text" placeholder="댓글창">
            </div>
            <div class="reply-button">
                <button class="btn btn-primary" id="replyWriteBtn">댓글 쓰기</button>
             </div>
        </div>

        <div class="reply-container" id="reply-box">
            
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

    <script>
        const $boardNumber = '${board.boardNumber}';
        const $upBtn = document.getElementById('up-btn');
        const $downBtn = document.getElementById('down-btn');
        const $replyWriteBtn = document.getElementById('replyWriteBtn');
        const $replyBtnGroup = document.getElementById('replyBtnGroup');
        const $replyBox = document.getElementById('reply-box');
        
        // 댓글 삭제, 수정 처리?
        $replyBox.addEventListener('click', e => {
           
            //replyDelBtn
            if (e.target.matches('.reply-container #replyDelBtn')) {
                console.log('삭제버튼 클릭');
                //console.log(e.target.getAttribute('data-replyNum')); 
                const $delRep = e.target.getAttribute('data-replyNum');
                fetch('/jeju-camps/notices/detail/reply' + '/' + $delRep, {
                        method: 'DELETE'
                    }).then(res => {
                        if (res.status === 200) {
                            toastr.success('댓글 삭제 성공! good');
                            return res.json();
                        } else {
                            toastr.error('댓글 삭제 실패! ㅜㅜ');
                        }
                    }).then(responseResult => {
                        getReplyList();
                    });
            
            }

            if (e.target.matches('.reply-container #replyModiBtn')) {
                
                console.log('수정버튼 클릭');
                //console.log(e.target.getAttribute('data-replyNum')); 
                const repNum = e.target.getAttribute('data-replyNum')
                // console.log(e.target.parentElement.parentElement.parentElement.querySelector('.reply-text'));
                // console.log(e.target.parentElement.parentElement.parentElement.querySelector('.reply-text2'));


                const $repText = e.target.parentElement.parentElement.parentElement.querySelector('.reply-text');
                const $repModify = e.target.parentElement.parentElement.parentElement.querySelector('.reply-text2');
                const $repOkBtn = $repModify.querySelector('#replyOk');
               
                
                if($repText.style.display==='block'){
                    $repText.style.display = 'none';
                    $repModify.style.display = 'block';
                } else {
                    $repText.style.display = 'block';
                    $repModify.style.display = 'none';
                }
                

                $repOkBtn.onclick = e => {
                    let $repValue = $repModify.querySelector('input').value;
                    // console.log('ㅎㅇㅎㅇ');
                    // console.log($repOkBtn.getAttribute('data-replyNum'));
                    // console.log($repValue);
                    if(!$repValue){
                        toastr.error('댓글 내용이 없어요 ,,,');
                        return;
                    } 

                    // if($repValue === $repText.value){
                    //     toastr.error('수정할려는 내용이 없어요,,,');
                    //     return;
                    // }


                    const payload = {
                        replyContent: $repValue,
                        replyNumber : +$repOkBtn.getAttribute('data-replyNum')
                    };

		            //console.log(payload);

                    const requestInfo = {
                        method: 'PUT',
                        headers: {
                            'content-type': 'application/json'
                        },
                        body: JSON.stringify(payload)
                     };

                // # 서버에 POST요청 보내기
                fetch('/jeju-camps/notices/detail/reply', requestInfo)
                    .then(res => res.json())
                      .then(responseResult => {
                        toastr.success('댓글 수정 성공@@@@');
                        $repText.style.display = 'block';
                         $repModify.style.display = 'none';
                        getReplyList();
                     });



                }

            }   
            



        });

        // 댓글 쓰기 처리
        $replyWriteBtn.onclick = e =>{
            const $replyWriteBox = document.getElementById('replyWriteBox');

            if(!$replyWriteBox.value){
                toastr.error('댓글 내용이 없어요 ,,,');
                return;
            }


            const payload = {
				replyContent: $replyWriteBox.value,
                boardNumber : '${board.boardNumber}',
                memberNumber : '${LOGIN.memberNumber}'
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
                fetch('/jeju-camps/notices/detail/reply/write', requestInfo)
                    .then(res => res.json())
                      .then(responseResult => {
                        toastr.success('댓글 등록 성공! nice');
                        $replyWriteBox.value ='';
                        getReplyList();
                     });
                

        }
    
        
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
                    let {replyNumber, replyContent, replyTime, boardNumber, memberNumber, memberNickname, profileImage} = con;
                            
                    tag+='<div class="reply-display">';       
                    tag+='    <div class="reply-title">';
                    tag+='<div class="reply-profile">';
                        if(!profileImage){
                            tag += '<img src="/assets/mypage/img/profile.png" alt="사진없음">';
                        } else {
                            tag += '<img src="/local' + profileImage + '" alt="프사">';
                        }
                   // tag+='    프사';
                    tag+='</div>'; 
                    tag+='<div class="reply-author">'
                       tag+='<span>'+memberNickname+'</span>';
                    tag+='</div>'; 
                    tag+='<div class="reply-btn-group" id="replyBtnGroup">';
                        if('${LOGIN.memberNumber}' == memberNumber){
                        tag+='<button class="btn" id="replyModiBtn" data-replyNum='+replyNumber+'>수정</button>';
                        tag+='<button class="btn" id="replyDelBtn" data-replyNum='+replyNumber+'>삭제</button>';
                        }
                    tag+='</div>';
                  tag+='</div>';
                tag+='<div class="reply-text" style="display:block">'+replyContent+'</div>';
                tag+='<div class="reply-text2" style="display:none">';
                    tag+='<input type="text" value="'+replyContent+'" class=" input input-bordered input-primary w-full max-w-xs"/>';
                    tag+='<button class="btn btn-primary" id="replyOk" data-replyNum='+replyNumber+'>확인</button>';
                tag+='</div>';
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



          
        const $dropContent = document.getElementById("drop-content");
        const $btn = document.querySelector('.smbtn');

        $btn.onclick = () => {
            $dropContent.style.display = "block"; 
        };

        $btn.parentElement.onmouseleave = () => {
            $dropContent.style.display = "none"; 
        };

 


        
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