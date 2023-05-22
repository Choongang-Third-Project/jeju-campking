<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<label%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>
    <!-- footer css -->
    <link rel="stylesheet" href="/assets/footer/css/footer.css">
    <!-- toaster set -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css"
        integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



    <style>
        #wrapper .container {
            border: 1px solid #000;
            width: 80%;
        }


        /* -------- begin member -------- */
        #wrapper .container .member {
            height: 150px;
        }

        #wrapper .container .member .member-img {
            margin-right: 50px;
        }

        #wrapper .container .member .member-img .avatar .img {
            transition: 0.5s;
            box-shadow: 5px 5px 5px 5px rgb(0, 0, 0);
        }

        #wrapper .container .member .member-img .avatar .img:hover {
            transform: scale(1.2);
            cursor: pointer;
        }

        /* -------- end member -------- */



        /* -------- begin camp-img -------- */
        #wrapper .container .camp-img {
            height: 400px;
            margin: 20px 0;
        }

        #wrapper .container .camp-img .img {
            border: 1px solid white;
            border-radius: 15px;
            overflow: hidden;
        }

        /* -------- end camp-img -------- */




        /* -------- begin party-date -------- */
        #wrapper .party-date {
            height: 200px;
            margin-bottom: 10px;

            display: flex;
            flex-direction: column;
            justify-content: space-between;

        }

        #wrapper .party-date .start-date {
            display: flex;
            justify-content: center;
            align-items: center;

            font-weight: 700;
        }

        #wrapper .party-date .end-date {
            display: flex;
            justify-content: center;
            align-items: center;

            font-weight: 700;
        }



        /* -------- end party-date -------- */


        /* -------- begin content-box -------- */


        #wrapper .content-box {
            width: 80%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        #wrapper .content-box .title {
            width: 100%;
            text-align: center;
            font-size: 1.5em;
            font-weight: 700;
            margin: 15px;

            padding-bottom: 10px;
            border-bottom: 1px solid #000;
        }

        #wrapper .content-box .content {
            width: 100%;
            margin: 15px;
            line-height: 1.8;
            padding-bottom: 30px;
            border-bottom: 1px solid #000;
        }


        /* -------- end content-box -------- */







        /* -------- start btn-box -------- */

        #wrapper .btn-box {
            margin: 15px;
        }

        /* -------- end btn-box -------- */




        /* -------- start join modal -------- */

        .party-join .party-chat {
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }

        .party-join .party-chat .content-box {
            width: 100%;
            height: 30px;

            margin-top: 25px;
            padding-bottom: 10px;

            border-bottom: 1px solid #000;
        }


        .party-join .party-chat .chat-box {
            height: 70%;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .party-join .party-chat .chat-box .chat {
            height: 100%;

            text-align: center;
            margin-bottom: 10px;

            display: flex;
        }

        .party-join .party-chat .chat-box .chat .message {
            width: 100%;
            height: 100%;

            overflow: scroll;
        }

        .party-join .party-chat .input-box {
            width: 80%;

            display: flex;
            justify-content: center;
            flex-direction: row;
            align-items: center;
        }


        .party-join .party-chat .input-box .btn {
            margin: 10px 0px 10px 10px;
        }

        /* -------- end join modal -------- */




        /* -------- start btn-box hover -------- */

        #wrapper .container .btn-box .btn-remove .btn {
            transition: 0.5s;
        }

        #wrapper .container .btn-box .btn-remove:hover .btn {
            box-shadow: 5px 5px 5px violet;
            transform: scale(1.2);
        }

        #wrapper .container .btn-box .btn-join .btn {
            transition: 0.5s;
        }

        #wrapper .container .btn-box .btn-join:hover .btn {
            box-shadow: 5px 5px 5px rgb(93, 67, 93);
            transform: scale(1.2);
        }

        #wrapper .container .btn-box .btn-modify .btn {
            transition: 0.5s;
        }

        #wrapper .container .btn-box .btn-modify:hover .btn {
            box-shadow: 5px 5px 5px rgb(59, 135, 210);
            transform: scale(1.2);
        }

        /* -------- end btn-box hover -------- */
    </style>

</head>

<body>
    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- 헤더 -->
    <%@ include file="../include/header.jsp" %>

    <div id="wrapper" class="flex justify-between flex-col items-center p-10">

        <div class="container flex justify-between flex-col items-center h-full">



            <!-- 작성자 사진과 닉네임 -->
            <div class="member w-full flex justify-center flex-row items-center h-35">
                <!-- 작성자 사진 -->
                <div class="member-img h-full flex justify-center items-center">

                    <div class="avatar">
                        <div class="img w-24 rounded-full">
                            <!-- <img id="profile" src="/assets/party/img/profile.png" /> -->
                            <c:if test="${LOGIN == null || LOGIN.profile == null}">
                                <img src="/assets/mypage/img/profile.png" alt="사진없음">
                            </c:if>
                            <c:if test="${LOGIN != null && LOGIN.profile != null}">
                                <img src="/local${LOGIN.profile}" alt="프사">
                            </c:if>
                        </div>
                    </div>

                </div>
                <!-- 작성자 닉네임 -->
                <div id="member-number" class="member-nickname h-full flex justify-center items-center">${detail.memberNumber}</div>
            </div>



            <!-- 캠프 타입 사진 -->
            <div class="camp-img w-full flex justify-between flex-col items-center h-72">
                <!-- 캠프 사진 -->
                <div class="img h-full">
                    <div class="img h-full">

                        <c:if test="${type eq 'glamping'}">
                            <img id="cmap-img" src="/assets/home/img/sm_glamping.jpg" class="h-full">
                        </c:if>
                        <c:if test="${type eq 'caravan'}">
                            <img id="cmap-img" src="/assets/home/img/sm_caraban.jpg" class="h-full">
                        </c:if>
                        <c:if test="${type eq 'car'}">
                            <img id="cmap-img" src="/assets/home/img/sm_car.jpg" class="h-full">
                        </c:if>
                        <c:if test="${type eq 'normal'}">
                            <img id="cmap-img" src="/assets/home/img/sm_normal.jpg" class="h-full">
                        </c:if>
    
                    </div>
                </div>
            </div>



            <!-- 여행 시작날짜와 종료 날짜와 인원 -->
            <div class="party-date flex w-full flex justify-center flex-col items-center">

                <div class="date flex justify-center flex-row items-center">
                    <!-- 여행 시작 날짜 -->
                    <div class="start-date grid h-20 bg-base-300 rounded-box w-40">
                        <div title="start-date" class="date">
                            ${detail.partyStartDate}
                        </div>
                    </div>

                    <!-- ~~ -->
                    <div class="divider divider-horizontal">TO</div>

                    <!-- 여행 종료 날짜 -->
                    <div class="end-date grid h-20 flex bg-base-300 rounded-box w-40">
                        <div title="end-date" class="date">
                            ${detail.partyEndDate}
                        </div>
                    </div>
                </div>
                <!-- 여행 시작 날짜 기준 디데이 -->
                <div class="grid grid-flow-col gap-5 text-center auto-cols-max">
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span style="--value:15;"></span>
                        </span>
                        days
                    </div>
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span style="--value:10;"></span>
                        </span>
                        hours
                    </div>
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span style="--value:24;"></span>
                        </span>
                        min
                    </div>
                    <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
                        <span class="countdown font-mono text-5xl">
                            <span style="--value:56;"></span>
                        </span>
                        sec
                    </div>
                </div>
            </div>



            <!-- 제목과 내용 -->
            <div class="content-box w-full flex justify-between flex-col items-center">
                <!-- 제목 -->
                <div id="title" class="title">${detail.partyTitle}</div>
                <!-- 내용 -->
                <div id="content" class="content">
                    ${detail.partyContent}
                </div>
            </div>


            <!-- 삭제, 참가, 수정 버튼 -->
            <div class="btn-box w-full flex justify-around flex-row items-center">

                <!-- 삭제 버튼 -->
                <c:if test="${LOGIN.memberNumber == detail.memberNumber}">
                    <div id="btn-remove" class="btn-remove">
                        <button class="btn btn-active btn-secondary">삭제하기</button>
                    </div>
                </c:if>

                <!-- 참가 버튼 -->
                <c:if test="${LOGIN.memberNumber != detail.memberNumber}">
                    <div class="btn-join">
                        <label for="my-modal-4" class="btn btn-active btn-primary">같이가기</label>
                    </div>
                </c:if>

                <!-- 수정 버튼 -->
                <c:if test="${LOGIN.memberNumber == detail.memberNumber}">
                    <div id="btn-modify" class="btn-modify">
                        <label for="modify-modal" class="btn btn-active btn-accent">수정하기</label>
                    </div>
                </c:if>

            </div>

        </div>

    
        <!-- party join modal -->
        <input type="checkbox" id="my-modal-4" class="modal-toggle" />
        <label for="my-modal-4" class="modal cursor-pointer">
            <label class="modal-box relative flex justify-center" for="">

                <!-- iphone -->
                <div class="party-join mockup-phone border-primary">
                    <div class="camera"></div>
                    <div class="display">
                        <div class="party-chat artboard artboard-demo phone-1 flex justify-between">

                            <div class="content-box flex justify-center items-center">
                                <div class="title">보낸 메시지</div>
                            </div>

                            <div class="chat-box flex flex-col w-full">
                                <div class="chat grid h-80 w-4/5 card bg-base-300 rounded-box place-items-center">
                                    <div id="chat" class="message">

                                    </div>
                                </div>
                            </div>

                            <div class="input-box">
                                <textarea id="message" class="message textarea textarea-primary"
                                    placeholder="보낼 메시지를 입력하세요!"></textarea>
                                <button id="send-btn" class="btn btn-outline btn-primary fa-solid fa-paper-plane"></button>
                            </div>

                        </div>
                    </div>

                </div>

            </label>
        </label>



        <!-- modify modal -->
        <input type="checkbox" id="modify-modal" class="modal-toggle" />
        <label for="modify-modal" class="modal cursor-pointer">
            <label class="modal-box relative flex justify-center" for="">

                <!-- 글 작성하기 -->
                <div class="container">
                    <h2>🌲캠퍼 모집 수정🌲</h2>
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
                      <div class="dropdown">
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
                        <input type="date" id="date" max="2025-12-31" min="2000-01-01" value="2023-05-21">
                      </label>
                      <label for="date" id="enddate">마감날짜를 선택하세요:
                        <input type="date" id="date" max="2025-12-31" min="2000-01-01" value="2023-05-21">
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




            </label>
        </label>    



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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
        integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript">
        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "100",
            "hideDuration": "1000",
            "timeOut": "2000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }

        // $('.btn-remove').on('click', function () {
        //     toastr.error('삭제 권한이 없습니다!');
        // });
        // $('.btn-modify').on('click', function () {
        //     toastr.warning('수정 권한이 없습니다!');
        // });
        // toastr.success('메세지가 성공적으로 보내졌습니다!');
        // toastr.error('삭제 권한이 없습니다!');
        // toastr.warning('수정 권한이 없습니다!');
    </script>


    <script>
        const loginMember = +'${LOGIN.memberNumber}';
        const partyMember = +'${detail.memberNumber}';
        const partyNumber = +'${detail.partyNumber}';
        
        const $sendBtn = document.getElementById('send-btn');
        const $enterKey = document.getElementById('message');

        const $deleteBtn = document.getElementById('btn-remove');
        const $removeBtn = document.getElementById('btn-');


        $deleteBtn.addEventListener('click', (e) => {
            fetch('/jeju-camps/parties/' + partyNumber,{
                method: 'DELETE'
            })
            .then(res => {
                if(res.status === 200){
                    toastr.success('성공적으로 삭제가 되었습니다.');
                    
                    setTimeout(() => {
                        location.href = "/jeju-camps/parties";
                    }, 2000);
                }
            });

        });


        $enterKey.addEventListener('keydown', (e) => {

            if (e.code === 'Enter') {

                const formData = new FormData();
                formData.append('partyMessageContent', document.getElementById('message').value);
                formData.append('partyMessageSender', loginMember);
                formData.append('partyMessageRecipient', partyMember);
                formData.append('partyNumber', partyNumber);

                fetch('/jeju-camps/parties',{
                    method: 'POST',
                    body : formData
                }).then(res => {
                    if (res.status === 200){
                        toastr.success('메세지가 성공적으로 보내졌습니다!');
                    }
                })

                e.preventDefault();

                const $message = document.getElementById('message').value;
                document.getElementById('chat').innerHTML += '<br>' + $message + '<br>';
                document.getElementById('message').value = '';
            }

        })


        $sendBtn.addEventListener('click', e => {

                const formData = new FormData();
                formData.append('partyMessageContent', document.getElementById('message').value);
                formData.append('partyMessageSender', loginMember);
                formData.append('partyMessageRecipient', partyMember);
                formData.append('partyNumber', partyNumber);

                fetch('/jeju-camps/parties',{
                    method: 'POST',
                    body : formData
                }).then(res => {
                    if (res.status === 200){
                        toastr.success('메세지가 성공적으로 보내졌습니다!');
                    }
                })
        });


        $sendBtn.addEventListener('click', e => {

            const $message = document.getElementById('message').value;
            document.getElementById('chat').innerHTML += '<br>' + $message + '<br>';
            document.getElementById('message').value = '';
        });

    </script>
</body>

</html>