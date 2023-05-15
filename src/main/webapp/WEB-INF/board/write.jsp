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
	<button class="btn w-3/6">목록조회</button>
	<button id="submit" class="btn w-3/6">작성완료</button>
</div>
<!-- Initialize Quill editor -->
<script>
  const URL = '/boards/write';
  var quill = new Quill('#editor', {
    theme: 'snow'
  });

  document.getElementById('submit').onclick = e => {
	const $title = document.querySelector('.boardTitle').value;
	const $content = quill.editor.delta.ops[0].insert;
	const $memberNumber = +document.getElementById('memberNumber').value;
	
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
							 location.href = '/notice';
                        } else {
                            alert('게시글 등록에 실패함!');
                        }
                    });
	

  }



</script>
</body>
</html>