<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file = "../include/static-head.jsp" %>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Jeju Camp King</title>
		<!-- Main Quill library -->
	<script src="//cdn.quilljs.com/1.3.6/quill.js"></script>
	<script src="//cdn.quilljs.com/1.3.6/quill.min.js"></script>

	<!-- Theme included stylesheets -->
	<link href="//cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
	<link href="//cdn.quilljs.com/1.3.6/quill.bubble.css" rel="stylesheet">

	<!-- Core build with no theme, formatting, non-essential modules -->
	<link href="//cdn.quilljs.com/1.3.6/quill.core.css" rel="stylesheet">
	<script src="//cdn.quilljs.com/1.3.6/quill.core.js"></script>
	
	<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

     

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



	<div class="wrapper w-3/5" style="margin: 0 auto;">
			<div class="mb-6">
			<input type="text" placeholder="제목 작성해주세요" name="boardTitle" class="boardTitle input input-bordered w-full h-20 font-mono text-3xl " />
			</div>
			
			<!-- Create the editor container -->
			<div id="editor" class="h-96 font-mono text-base boardContent" name="boardContent">  
			</div>
			<!-- 임시 회원 데이터 -->
			<input type="hidden" id="memberNumber" name="memberNumber" value="1">
		<!-- Include the Quill library -->
		<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
		<div class="board-menu flex">
			<button class="btn w-3/6" id="list">목록조회</button>
			<button id="submit" class="btn w-3/6">작성완료</button>
		</div>
	</div>
<!-- Initialize Quill editor -->
<script>

  const URL = '/jeju-camps/notices/write';
  const $list = document.getElementById('list');


$list.onclick =  e => {
	location.href = "/jeju-camps/notices";
}


  var quill = new Quill('#editor', {
    theme: 'snow'
  });

  document.getElementById('submit').onclick = e => {
	const $title = document.querySelector('.boardTitle').value;
	const $content = quill.editor.delta.ops[0].insert;
	const $memberNumber = '${LOGIN.memberNumber}';
	

	console.log($content);
	// # 서버로 보낼 데이터
	const payload = {
				boardTitle: $title,
				boardContent : $content,
				memberNumber: $memberNumber
                };


	const requestInfo = {
                    method: 'POST',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify(payload)
                };

                // # 서버에 POST요청 보내기
                fetch(URL, requestInfo)
                    .then(res => {
                        if (res.status === 200) {
                            alert('게시글 정상 등록됨!');
                            

                            // 마지막페이지 번호
                            // const lastPageNo = document.querySelector('.pagination').dataset.fp;
                            // getReplyList(lastPageNo);
							 location.href = '/jeju-camps/notices';
                        } else {
                            alert('게시글 등록에 실패함!');
                        }
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


</script>
</body>
</html>