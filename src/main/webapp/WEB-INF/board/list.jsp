<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CAMP KING</title>
    <%@ include file="../include/static-head.jsp" %>
    <link rel="stylesheet" href="/assets/board/css/list.css">
    
</head>
<body>
    

    <!-- 게시판 시작 -->
    <main>
        <div class="input-box flex  mb-1 justify-center ">
            
            <div>
                <select class="select select-accent min-w-max max-w-xs">
                    <option selected>제목</option>
                    <option>내용</option>  
                    <option>제목+내용</option>
                </select>
                <input type="text" placeholder="Type here" class="input input-bordered input-info w-96" id="search" />
                <input type="submit" value="검색" class="input input-bordered">
                <button class="btn" id="write">글쓰기</button>
            </div>
        </div>

        <div id="board">
            
            
        </div>
      

        <div class="page">
            <div class="btn-group  ">
                <button class="btn btn-md">&lt;&lt;</button>
                <button class="btn btn-md">1</button>
                <button class="btn btn-md btn-active">2</button>
                <button class="btn btn-md">3</button>
                <button class="btn btn-md">4</button>
                <button class="btn btn-md">5</button>
                <button class="btn btn-md">6</button>
                <button class="btn btn-md">7</button>
                <button class="btn btn-md">8</button>
                <button class="btn btn-md">9</button>
                <button class="btn btn-md">10</button>
                <button class="btn btn-md">&gt;&gt;</button>
            </div>
         </div>
    </main>





    
    <script>
        
        const $idInput = document.getElementById('search');
        const $write = document.getElementById('write');

        $write.onclick = e => {
            location.href = '/boards/write';
        }


        // // 검색창 키업될때마다 서버로 갱신하기
        $idInput.onkeyup = e => {
            console.log($idInput.value);
            if($idInput.value.length===0){
                getBoardList();
                return;
            }


            // fetch(URL + '/' + bno + '/page/' + page)
            fetch('/boards/' + $idInput.value)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderBoardList(responseResult);
             });

        }




        // 공지사항 목록 렌더링 함수
         function renderBoardList(
            list
        ) {
            // console.log(list);
            let tag = '';

            if (list === null || list.length === 0) {
                tag += "<div id='#' class='card-body'>공지사항이 아직 없습니다! ㅠㅠ</div>";
            } else {
                for (let con of list){
                    let {boardNumber, boardTitle, boardContent, boardTime, memberNumber} = con;
                    
                    if(boardTitle.length > 20){
                        boardTitle = boardTitle.substring(0, 20);
                    }
                    if(boardContent.length > 60){
                        boardContent = boardContent.substring(0, 60);
                    }


                    tag+='<a href="/boards/detail?boardNumber='+boardNumber+'">';
                    tag+='<div id="campBoard" class="card lg:card-side bg-base-100 shadow-xl relative mb-1 h-40">';       
                    tag+='<div id="#" class="self-center pl-3" >'+ boardNumber+'</div>';
                    tag+='<div class="card-body">';
                    tag+='<h2 class="card-title" id="campName">'+boardTitle+'</h2>';
                    tag+='<div class="absolute top-8 right-0 w-2/6 flex justify-around pr-3">';
                        tag+='<div><i class="fa-solid fa-circle-user"></i>&nbsp;<span id="#">admin</span></div>';
                        tag+='<div><i class="fa-solid fa-user"></i>&nbsp;&nbsp;<span id="#">200</span></div>';
                        tag+='<div><i class="fa-solid fa-star"></i>&nbsp;&nbsp;<span id="#">1</span></div>';
                    tag+='</div>';
                    tag+='<p>'+ boardContent +'</p>';
                    tag+='<div class="card-actions justify-end">';
                      tag+='<button class="btn btn-primary" id="modify">수정하기</button>';
                      tag+='<button class="btn btn-secondary" id="delete">삭제하기</button>';
                     
                      tag+='</div>';
                      tag+='</div>';
                    tag+='</div>';
                    tag+='</div>';
                    tag+='</a>';
                }
            }


            // 생성된 캠핑 tag 렌더링
            document.getElementById('board').innerHTML = tag;
           
        }
        
         // 캠핑 목록 불러오기 함수 
         function getBoardList() {
            fetch('/boards')
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderBoardList(responseResult);
               });
            }

            


         //========= 메인 실행부 =========//
         (function() {
             // 첫 댓글 페이지 불러오기
             getBoardList();
        

        })();




    </script>

</body>
</html>




