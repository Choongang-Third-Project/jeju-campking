<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" href="/main/resources/static/assets/party/party.css">
    <link rel="stylesheet" href="/main/resources/static/assets/party/common.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <style>

    </style>
</head>

<body>
    <h1 class="title">
        같이 갈 사람 😁
    </h1>
    <div class="orderby">정렬</div>
    <nav>
        <div class="roundbar">
            <div><a href="#">캠프장 이름</a></div>
            <div><a href="#">제목</a></div>
            <div><a href="#">작성자</a></div>
            <div><a href="#">날짜</a></div>
            <div><a href="#">타입</a></div>
            <div><a href="#">정원</a></div>
        </div>
    </nav>

    <section class="content">
        <c:forEach var="b" items="${bList}">
            <ul id="party-list">
                <li>
                    <div class="item_card clearfix">
                        <div class="img-box">
                            <img src="/main/resources/static/assets/home/img/sm_normal.jpg" alt="">
                        </div>
                        <div class="small_title">
                            <div>글램핑 같이 갈분 모집해요~!!</div>
                            <span>준비물은 텐트와 버너...</span>
                        </div>
                        <div class="wirter">
                            by 작성자
                        </div>
                    </div>
                </li>
            </ul>
        </c:forEach>
    </section>
</body>
<script>
    // 댓글 목록 렌더링 함수
    function renderReplyList({
        allBySort
    }) {

        // 총 댓글 수 렌더링
        document.renderPartyList('replyCnt').textContent = count;

        let tag = '';

        if (allBySort === null || allBySort.length === 0) {
            tag += " ";

        } else {
            for (let party of allBySort) {

                const {
                    partyNumber,
                    partyTitle,
                    partyStartDate,
                    partyEndDate,
                    partySize,
                    partyWriteTime,
                    memberNumber,
                    campNumber
                } = party;

                if(campNumber){
                    
                }

                tag += "<ul id='party-list'>" +
                "<li>"
                    +"<div class='item_card clearfix'>" 
                        +"<div class='img-box'>"
                    +        "<img src='/main/resources/static/assets/home/img/sm_normal.jpg' >"
                    +    "</div>"
                    +    "<div class='small_title'>"
                    +      "<div>"+ partyTitle+ "</div>"
                    +        "<span>" +준비물은 텐트와 버너... +"</span>"
                    +    "</div>"
                    +    <div class='wirter'>"
                    +        by 작성자
                    +    "</div>"
                    +"</div>"
                +"</li>"
            +"</ul>"

                // if (currentAccount === rep.account || auth === 'ADMIN') 
                tag +=
                    "         <a id='replyModBtn' class='btn btn-sm btn-outline-dark' data-bs-toggle='modal' data-bs-target='#replyModifyModal'>수정</a>&nbsp;" +
                    "         <a id='replyDelBtn' class='btn btn-sm btn-outline-dark' href='#'>삭제</a>";
                // }
                tag += "       </div>" +
                    "    </div>" +
                    " </div>";
            }

            // 생성된 파티 tag 렌더링
            document.getElementById('party-list').innerHTML = tag;
        }

        // 같이갈 사람 구하는 게시물 목록 불러오는 함수 
        function getPartyList() {
            fetch(`/parties/all-list/${type}/${sort}`)
                .then(res => res.json())
                .then(responseResult => {
                    renderCampList(responseResult)
                })
        }
</script>

</html>