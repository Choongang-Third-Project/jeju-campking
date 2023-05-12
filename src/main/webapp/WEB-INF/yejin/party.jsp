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
    .title {
        font-family: 'Black Han Sans', sans-serif;       
    }
</style>
</head>

<body>
    <h1 class="title"><<같이 갈 사람 게시판>></h1>
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

    <c:forEach var="b" items="${bList}">     
    <section class="content">

        <ul>
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
    </section>
</c:forEach>    
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
        <div class="endbox">
            <button>&lt;</button>
            <ul>
                <li><a href="../yejin/kakao.html">1</a></li>
                <li><a href="https://www.kakaocorp.com/page/service/tech">2</a></li>
            </ul>
            <button>&gt;</button>
        </div>
    </section>    



</body>
</html>