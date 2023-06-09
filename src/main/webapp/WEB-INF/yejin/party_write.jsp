<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Jeju Camp King</title>
  <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <link rel="stylesheet" href="/assets/include/common.css">
  <link rel="stylesheet" href="/assets/header/css/header.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

  <!-- footer css -->
  <link rel="stylesheet" href="/assets/footer/css/footer.css">

  

  <style>
    @import url('https://fonts.googleapis.com/icon?family=Material+Icons');

    .dropdown-label {
      font-size: 12px;
      /* margin : 10px; */
      margin-top: 15px;
      margin-bottom: 10px;
      font-weight: bold;
      color: rgb(50, 50, 50);
    }

    .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropbtn_icon {
      font-family: 'Material Icons';
    }

    .dropbtn {
      display: block;
      border: 2px solid rgb(94, 94, 94);
      border-radius: 4px;
      background-color: #fcfcfc;
      font-weight: 400;
      color: rgb(124, 124, 124);
      padding: 12px;
      width: 240px;
      text-align: left;
      cursor: pointer;
      font-size: 12px;
      z-index: 1;
      position: relative;
    }

    .dropdown-content {
      display: none;
      font-weight: 400;
      background-color: #fcfcfc;
      min-width: 240px;
      border-radius: 8px;
      height: 160px;
      overflow: scroll;
      box-shadow: 0px 0px 10px 3px rgba(190, 190, 190, 0.6);
    }

    .dropdown-content::-webkit-scrollbar {
      width: 5px;
      height: 10px;
    }

    .dropdown-content::-webkit-scrollbar-thumb {
      border-radius: 2px;
      background-color: rgb(194, 194, 194)
    }

    .dropdown-content div {
      display: block;
      text-decoration: none;
      color: rgb(37, 37, 37);
      font-size: 12px;
      padding: 12px 20px;
    }

    .dropdown-content div:hover {
      background-color: rgb(226, 226, 226);
    }

    .dropdown-content.show {
      display: block;
    }

    .container {
      font-family: 'Black Han Sans', sans-serif;
    }

    h2 {
      font-size: 50px;
    }

    .total {
      font-size: 30px;
    }

    .form-group {
      font-size: 30px;
    }

    #people_count {
      width: 100px;
    }

    #enddate {}

    #startdate {
      margin-right: 30px;
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
   
   
  
  <div class="container">
    <h2>🌲캠퍼 모집 작성🌲</h2>
    <!-- <form action="write.jsp" method="post"> -->
      <div class="total">
        <label for="title">제목</label>
        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
        <input type="text" class="form-control" id="title" placeholder="제목 입력(4-100)" name="title" maxlength="100"
          required="required" pattern=".{4,100}">
      </div>
      <div class="dropdown-label" style="font-size: 20px;">
        camp🐛
      </div>
      <div class="dropdownss">
        <button class="dropbtn" onclick="dropdown()">
          <span class="dropbtn_icon">more_horiz</span>
          <span class="dropbtn_content">캠핑장 선택</span>
          <span class="dropbtn_click"
            style="font-family: Material Icons; font-size : 16px; color : #3b3b3b; float:right;">arrow_drop_down</span>
        </button>
        <div class="dropdown-content">
          <div class="fastfood" onclick="showMenu(this.innerText)">1</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">2</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">3</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">4</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">5</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">6</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">7</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">8</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">9</div>
          <div class="fastfood" onclick="showMenu(this.innerText)">10</div>
        </div>
      </div>
      <br>
      <label for="people">파티 정원</label>
      <input type="text" class="form-control" id="people_count" placeholder="2명~10명" name="writer">
      <br>
      <label for="date" id="startdate">시작날짜를 선택하세요:
        <input type="date" id="date" max="2023-08-31" min="2023-05-26" value="2023-05-27">
      </label>
      <label for="date" id="enddate">마감날짜를 선택하세요:
        <input type="date" id="date" max="2023-08-31" min="2023-05-26" value="2023-05-27">
      </label>

      <div class="form-group">
        <label for="content">내용</label>
        <!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
        <!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
        <textarea class="form-control" rows="5" id="content" name="content" placeholder="내용 작성"></textarea>
      </div>
      <button id="replyAddBtn" type="submit" class="btn btn-default">등록</button>
    <!-- </form> -->
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
    //캠프장 드롭다운 메뉴
     window.onload = () => {
      document.querySelector('.dropbtn').onclick = () => {
        dropdown();
      }
    
      document.getElementsByClassName('fastfood').onclick = () => {
        showMenu(value);
      };
      dropdown = () => {
        var v = document.querySelector('.dropdown-content');
        var dropbtn = document.querySelector('.dropbtn')
        v.classList.toggle('show');
        dropbtn.style.borderColor = 'rgb(94, 94, 94)';
      }

      showMenu = (value, campNumber) => {
        var dropbtn_icon = document.querySelector('.dropbtn_icon');
        var dropbtn_content = document.querySelector('.dropbtn_content');
        var dropbtn_click = document.querySelector('.dropbtn_click');
        var dropbtn = document.querySelector('.dropbtn');

        dropbtn_icon.innerText = '';
        dropbtn_content.setAttribute('data-id',campNumber);
        dropbtn_content.innerText = value;
        dropbtn_content.style.color = '#252525';
        dropbtn.style.borderColor = '#3992a8';
      }
     }
    window.onclick = (e) => {
      if (!e.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");

        var dropbtn_icon = document.querySelector('.dropbtn_icon');
        var dropbtn_content = document.querySelector('.dropbtn_content');
        var dropbtn_click = document.querySelector('.dropbtn_click');
        var dropbtn = document.querySelector('.dropbtn');

        var i;
        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }
    //드롭다운 메뉴설정 끝


    //드롭다운(캠핑장) 랜더링 함수
    function rendercampList(list) {
      let tag = '';      

      for(let con of list){
        let {campName, campNumber} = con;
       tag += '<div class="fastfood" onclick="showMenu(this.innerText, '+campNumber+')">' +
        campName + "</div>";
       }
      //생성된 캠프장 tag 랜더링
      document.querySelector('.dropdown-content').innerHTML = tag;
    }
    //캠핑장 데려오기
    function getCampList() {
      fetch('/jeju-camps/info/all-list')
        .then(res => res.json())
        .then(responseResult => {
          console.log(responseResult);
          rendercampList(responseResult);
        })
    }

    // 게시글 등록 처리 이벤트 함수
    function makepartyRegisterClickEvent() {

      const $regBtn = document.getElementById('replyAddBtn');
      


      $regBtn.onclick = e => {
        // 게시물 제목
        const $title = document.getElementById('title');
        // 게시물 내용
        // const $content = document.querySelector('.form-control');
        const $content = document.getElementById('content');

        //  파티원 정원 수
        const $count = document.getElementById('people_count');
        //시작 날짜
        const $startdate = document.querySelector('#startdate input');
        //마감 날짜
        const $enddate = document.querySelector('#enddate input');
        // 캠핑장
        const $campNumber = document.querySelector('.dropbtn_content').dataset.id;
        // console.log($content.value);
        // console.log($count.value);
        // console.log($title.value);
        console.log($campNumber);
        // 클라이언트 입력값 검증
        if ($title.value.trim() === '') {
          alert('게시글 제목은 필수입니다!');
          return;
        } else if ($content.value.trim() === '') {
          alert('내용은 필수입니다!');
          return;
        } else if ($count.value < 2 || $count.value > 20) {
          alert('캠퍼 정원은 2~20명 사이로 작성하세요!');
          return;
        } else if ($campNumber === null) {
          alert('캠프장은 꼭 선택해야합니다');
          return;
        } else if ($startdate === '' || $enddate === '') {
          alert('날짜를 꼭 선택해주세요 !');
        }



        console.log($startdate);
        console.log($startdate.value);
         // # 서버로 보낼 데이터
         const payload = {
          partyTitle: $title.value,
          partyContent: $content.value,
          partySize: $count.value,
          campNumber: $campNumber,
          partyStartDate: $startdate.value,
          partyEndDate: $enddate.value,
          memberNumber : '${LOGIN.memberNumber}'
        };
        // # GET방식을 제외하고 필요한 객체
        const requestInfo = {
          method: 'POST',
          headers: {
            'content-type': 'application/json'
          },
          body: JSON.stringify(payload)
        };
        
        const URL = "/jeju-camps/parties/write";


        // # 서버에 POST요청 보내기
        fetch(URL, requestInfo)
          .then(res => {
            if (res.status === 200) {
              alert('게시글이 정상 등록됨!');
              // 입력창 비우기
              // $title.value = '',
              //   $content.value = '',
              //   $count.value = '',
              //   $campNumber.value = '',
              //   $startdate.value = '',
              //   $enddate.value = ''

                location.href="/jeju-camps/parties";
            } else {
              alert('게시글 등록에 실패함!');
            }
          });



      }

       
      };


      


const $dropContent = document.getElementById("drop-content");
        const $btn = document.querySelector('.smbtn');

        $btn.onclick = () => {
            $dropContent.style.display = "block"; 
        };

        $btn.parentElement.onmouseleave = () => {
            $dropContent.style.display = "none"; 
        };




      //메인 실행부
      (function() {

        //캠프 리스트 불러오기
        getCampList();

        // 게시글 등록 처리 이벤트
        makepartyRegisterClickEvent();
      })();

  </script>
</body>
</html>