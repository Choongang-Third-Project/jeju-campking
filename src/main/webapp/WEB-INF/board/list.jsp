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
                <button class="btn btn-md btn-active">1</button>
                <button class="btn btn-md">2</button>
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
        const $btnGroup = document.querySelector('.btn-group');

        let $pageNo = 1;
        

        // 페이지네이션 처리중
        $btnGroup.addEventListener('click', e => {
            if(e.target.matches('.btn-group *')){
                // console.log('페이지 클릭');
                for(let $button of [...$btnGroup.children]){
                    $button.classList.remove('btn-active');
                }
                let $curButton = e.target.closest('.btn-md');

                $pageNo = e.target.closest('.btn-md').innerText;
                $curButton.classList.add('btn-active');

                // console.log($pageNo);
                getBoardList();
                

            }
        })
       


        $write.onclick = e => {
            location.href = '/jeju-camps/notices/write';
        }


        // // 검색창 키업될때마다 서버로 갱신하기
        $idInput.onkeyup = e => {
            console.log($idInput.value);
            if($idInput.value.length===0){
                getBoardList();
                return;
            }


            // fetch(URL + '/' + bno + '/page/' + page)
            fetch('/jeju-camps/notices/' + $idInput.value)
                .then(res => res.json())
                .then(responseResult => {
                    // console.log(responseResult);
                    renderBoardList(responseResult);
             });

        }
        

        // 공지사항 삭제 버튼
        const $board = document.getElementById('board');

        $board.addEventListener('click', e => {
            // 삭제 버튼을 눌렀다면~
            if (e.target.matches('.card-actions #delete')) {
                console.log('삭제버튼 클릭');
            //     modal.style.display = 'flex'; // 모달 창 띄움

                 const $delBtn = e.target.closest('#delete').dataset.no;
                 console.log($delBtn);


                 // 서버에 삭제 비동기 요청
                 fetch('/jeju-camps/notices' + '/' + $delBtn, {
                        method: 'DELETE'
                    }).then(res => {
                        if (res.status === 200) {
                            alert('공지사항 정상 삭제됨!');
                            return res.json();
                        } else {
                            alert('공지사항 삭제 실패!');
                        }
                    }).then(responseResult => {
                        getBoardList();
                    });

            //     const deleteLocation = $delBtn.dataset.href;

            //     // 확인 버튼 이벤트
            //     confirmDelete.onclick = e => {
            //         // 삭제 처리 로직
            //         window.location.href = deleteLocation;

            //         modal.style.display = 'none'; // 모달 창 닫기
            //     };


            //     // 취소 버튼 이벤트
            //     cancelDelete.onclick = e => {
            //         modal.style.display = 'none'; // 모달 창 닫기
            //     };
            // } else { // 삭제 버튼 제외한 부분은 글 상세조회 요청

            //     // section태그에 붙은 글번호 읽기
            //     const bno = e.target.closest('section.card').dataset.bno;
            //     // 상세 조회 요청 보내기
            //     window.location.href= '/board/detail?bno=' + bno + '&pageNo=${s.pageNo}&type=${s.type}&keyword=${s.keyword}';
            }
        });

        // 공지사항 수정 버튼
        $board.addEventListener('click', e => {
            // 삭제 버튼을 눌렀다면~
            if (e.target.matches('.card-actions #modify')) {
             //   console.log('수정 버튼 클릭');
                 const $modifyBtn = e.target.closest('#modify').dataset.no;
            //     console.log($modifyBtn);
                location.href='/jeju-camps/notices/modify?boardNumber='+$modifyBtn; // GET방식 detail 호출
            
             }
        });


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


                    
                    tag+='<div id="campBoard" class="card lg:card-side bg-base-100 shadow-xl relative mb-1 h-40">';       
                    tag+='<div id="bno" class="self-center pl-3" >'+ boardNumber+'</div>';
                    tag+='<div class="card-body">';
                    tag+='<a href="/jeju-camps/notices/details?boardNumber='+boardNumber+'">';
                    tag+='<h2 class="card-title" id="campName">'+boardTitle+'</h2>';
                    tag+='<div class="absolute top-8 right-0 w-2/6 flex justify-around pr-3">';
                        tag+='<div><i class="fa-solid fa-circle-user"></i>&nbsp;<span id="#">admin</span></div>';
                        tag+='<div><i class="fa-solid fa-user"></i>&nbsp;&nbsp;<span id="#">200</span></div>';
                        tag+='<div><i class="fa-solid fa-star"></i>&nbsp;&nbsp;<span id="#">1</span></div>';
                    tag+='</div>';
                    tag+='<p>'+ boardContent +'</p>';
                    tag+='</a>';
                    tag+='<div class="card-actions justify-end">';
                      tag+='<button class="btn btn-primary" id="modify" data-no="'+boardNumber+'">수정하기</button>';
                      tag+='<button class="btn btn-secondary" id="delete" data-no="'+boardNumber+'">삭제하기</button>';
                     
                      tag+='</div>';
                      tag+='</div>';
                    tag+='</div>';
                    tag+='</div>';
                    
                }
            }


            // 생성된 캠핑 tag 렌더링
            document.getElementById('board').innerHTML = tag;
           
        }
        
         // 캠핑 목록 불러오기 함수 
         function getBoardList() {
            fetch('/jeju-camps/notices/all' + '?pageNo='+ $pageNo +' & amount=10')
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




