<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
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
	<div class="wrapper w-3/5" style="margin: 0 auto;">
		<div class="mb-6">
			<div class="font-mono text-3xl font-bold">작성글 번호 <span id="boardNumber">${board.boardNumber}</span></div>
			<input type="text" value="${board.boardTitle}" name="boardTitle" class="boardTitle input input-bordered w-full h-20 font-mono text-3xl " />
		</div>
		<!-- Create the editor container -->
		<div id="editor" class="h-96 font-mono text-base boardContent" name="boardContent">  
			${board.boardContent}
		</div>
		<!-- 임시 회원 데이터 -->
		<input type="hidden" id="memberNumber" name="memberNumber" value="1">
	<!-- Include the Quill library -->
	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
	<div class="board-menu flex">
		<button class="btn w-3/6" id="list">목록조회</button>
		<button id="submit" class="btn w-3/6">수정완료</button>
	</div>
	<!-- Initialize Quill editor -->
	</div>
<script>



	const $list = document.getElementById('list');


	$list.onclick =  e => {
		location.href = "/jeju-camps/notices";
	}
  const URL = '/jeju-camps/notices/';
  var quill = new Quill('#editor', {
    theme: 'snow'
  });

  document.getElementById('submit').onclick = e => {
	const $title = document.querySelector('.boardTitle').value;
	const $content = quill.editor.delta.ops[0].insert;
	const $boardNumber = document.getElementById('boardNumber').value;
	

	//console.log($content);
	// # 서버로 보낼 데이터
	const payload = {
				boardTitle: $title,
				boardContent : $content,
				boardNumber: '${board.boardNumber}'
                };

		console.log(payload);
	const requestInfo = {
                    method: 'PUT',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify(payload)
                };

                // # 서버에 POST요청 보내기
                fetch(URL, requestInfo)
                    .then(res => {
                        if (res.status === 200) {
                            alert('게시글 정상 수정됨!');
                            

                            // 마지막페이지 번호
                            // const lastPageNo = document.querySelector('.pagination').dataset.fp;
                            // getReplyList(lastPageNo);
							 location.href = '/jeju-camps/notices';
                        } else {
                            alert('게시글 수정에 실패함!');
                        }
                    });
	
  }
   	
   		


</script>
</body>
</html>