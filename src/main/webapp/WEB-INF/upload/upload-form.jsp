<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <style>
        .upload-box {
            width: 150px;
            height: 150px;
            border: 3px dashed orange;
            display: flex;
            justify-content: center;
            align-items: center;
            color: red;
            font-weight: 700;
            cursor: pointer;
        }
        #img-input {
            display: none;
        }
    </style>
</head>
<body>

    <h1>파일 업로드 예제</h1>

    <div class="upload-box">파일 첨부</div>

    <form action="/upload-file" method="post" enctype="multipart/form-data">
        <input id="img-input" type="file" name="thumbnail" accept="image/*">
        <%-- 속성 중 multiple이라고 한꺼번에 여러개 올리는 것도 있음 --%>
        <button type="submit">전송</button>
    </form>

    <script>

        const $box = document.querySelector('.upload-box');
        const $input = document.getElementById('img-input');

        $box.onclick = e => {
            $input.click();
        };

    </script>

</body>
</html>