<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" rel="stylesheet" type="text/css"/>
    <!-- css -->
    <link rel="stylesheet" href="/assets/mypage/css/mypage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%-- js --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.tailwindcss.com"></script>

</head>
<body>
<div class="mp-wrap">
    <!-- header -->
    <header>

    </header>

    <div class="mp-box">
        <!-- 간단 회원 정보 (프로필사진, 닉네임, 회원등급) -->
        <div class="mp-info">
            <div class="mp-info-text">
                <div class="mp-info-content mp-info-profile w-24 mask mask-squircle">
                    <%-- 프로필사진 경로 추가해야합니다. --%>
<%--                    <img src="/local${login.profile}"/>--%>
                </div>
                <div class="mp-info-content"><span class="mp-info-name"></span> 님</div>
                <div class="mp-info-content mp-info-nickname">일반회원</div>
                <div class="mp-info-content mp-info-withdrawal">
                    <button class="btn btn-wide bg-primary update-btn">개인정보 수정</button>
                </div>
                <div class="mp-info-content">
                    <button class="btn btn-wide bg-primary">회원 탈퇴</button>
                </div>
            </div>
            <!-- 메인 -->
            <div class="mp-main-content mp-main">
                <!-- 내가 쓴 글 -->
                <div class="mp-main-content mp-board">
                    <div class="mp-board-title">
                        내 게시글
                    </div>
                    <div class="overflow-x-auto w-full mp-board-list">
                        <table class="table w-full mp-board-li">
                            <thead class="mp-board-header">
                            <tr>
<%--                                <th>--%>
<%--                                    <label>--%>
<%--                                        <input type="checkbox" class="checkbox mp-board-check-all"/>--%>
<%--                                    </label>--%>
<%--                                </th>--%>
                                <th>파티 번호</th>
                                <th><a>제목</a></th>
                                <th>작성일자</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody id="mp-party-list">
                                <%-- 파티게시글 목록 뿌려줄 부분 --%>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 쪽지함 -->
                <div class="mp-main-content mp-board">
                    <div class="mp-board-title">쪽지함</div>
                    <div class="mp-msg-btn btn-group grid grid-cols-2">
                        <button class="mp-msg-receive-btn btn btn-outline">받은 쪽지함</button>
                        <button class="mp-msg-send-btn btn btn-outline">보낸 쪽지함</button>
                    </div>
                    <!--                    <li class="mp-board-li">게시글1</li>-->
                    <!--                    <li class="mp-board-li">게시글2</li>-->
                    <!--                    <li class="mp-board-li">게시글3</li>-->
                    <div class="overflow-x-auto w-full mp-board-list">
                        <table class="table w-full mp-board-li">
                            <thead>
                            <tr>
<%--                                <th colspan='2'>--%>
<%--&lt;%&ndash;                                    <label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <input type="checkbox" class="checkbox mp-msg-check-all"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </label>&ndash;%&gt;--%>
<%--                                </th>--%>
                                <th>파티번호</th>
                                <th id="mp-msg-person">보낸사람</th>
                                <th>쪽지내용</th>
                                <th id="mp-msg-date">전송일자</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody id="mp-msg-list">
                                <%-- 받은 메세지, 보낸 메세지 뿌려줄 부분 --%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <footer>

            </footer>
        </div>

        <%---------------------- 스크립트 ------------------------%>
        <script>
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
                "timeOut": "1500",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            }
            /* ------------------- 게시글, 쪽지함 로드 -------------------- */
            // 받은 쪽지함 버튼
            const $receiveMessageBtn = document.querySelector('.mp-msg-receive-btn');
            // 보낸 쪽지함 버튼
            const $sendMessageBtn = document.querySelector('.mp-msg-send-btn');

            // 로그인한 회원의 회원 번호
            const memberNum = '${memberNumber}';

            // 좌측 닉네임, 회원등급, 프로필사진 렌더링 함수
            function renderMypageInfo({memberNumber, memberNickname, profile}) {
                let tag = '';
                <%--tag += `<img src="/local${login.profile}"/>`--%>
                // console.log(memberNickname);
                document.querySelector('.mp-info-name').textContent = memberNickname;
                document.querySelector('.mp-info-profile').innerHTML = tag;
            }

            // 작성 파티게시글 목록 렌더링 함수
            function renderPartyList(responseResult) {
                let tag = '';

                if (responseResult === null) {

                } else {
                    for (let response of responseResult) {

                        const {partyNumber, partyTitle, partyWriteTime} = response;
                        tag += `<tr>
                                    <td>
                                        <div class="space-x-3">
                                            <div>
                                                <div class="font-bold party-num">\${partyNumber}</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <a href="" class="mp-board-content">
                                            \${partyTitle}
                                        </a>
                                    </td>
                                    <td>\${partyWriteTime}</td>
                                    <th>
                                        <button class="btn btn-xs delete-btn" data-party-no=\${partyNumber}>삭제</button>
                                    </th>
                                </tr>`
                    }
                }

                // 생성한 tag 를 thead 아래에 렌더링
                document.getElementById('mp-party-list').innerHTML = tag;

                // 삭제 버튼 클릭시 게시글 삭제
                const $deleteBtns = document.querySelectorAll('.delete-btn');
                for(const deleteBtn of $deleteBtns) {
                    deleteBtn.onclick = e => {
                        // if (!confirm('정말 삭제하시겠습니까?')) return;
                        toastr.info("<br /><br /><button type='button' id='confirmationButtonYes' class='btn clear'>확인</button>",'정말 삭제하시겠습니까?',
                            {
                                closeButton: true,
                                allowHtml: true,
                                progressBar: false,
                                timeOut: 10000,
                                onShown: function (toast) {
                                    $("#confirmationButtonYes").click(function(){
                                        // console.log('clicked yes');
                                        const deleteParty = deleteBtn.dataset.partyNo; // 삭제하려는 파티게시글의 번호
                                        fetch('/jeju-camps/api/v1/mypages/party/delete/' + deleteParty + `/` + memberNum)
                                            .then(res => res.json())
                                            .then(responseResult => {
                                                toastr.success('삭제되었습니다.');
                                               renderPartyList(responseResult);
                                            });
                                    });
                                }
                            });
                    };
                }
            }

            // 좌측 회원정보 불러오기 함수
            function getMemberInfo(memberNum) {
                fetch('/jeju-camps/api/v1/mypages/' + memberNum)
                    .then(res => res.json())
                    .then(responseResult => {
                        // console.log(responseResult);
                        renderMypageInfo(responseResult);
                    });
            }

            // 내가 쓴 파티게시글 목록 불러오기 함수
            function getPartyList(memberNum) {
                fetch('/jeju-camps/api/v1/mypages/party/' + memberNum)
                    .then(res => res.json())
                    .then(responseResult => {
                        // console.log(responseResult);
                        renderPartyList(responseResult);
                    })
            }
            // 보낸사람, 받은사람 테이블헤더
            const messagePerson = document.getElementById('mp-msg-person');
            // 쪽지 뿌려줄 위치
            const MessageContent = document.getElementById('mp-msg-list');

            // 보낸 쪽지함 목록 렌더링 함수
            function renderSendMessageList(responseResult) {
                let contentTag = '';

                if (responseResult === null) {

                } else {
                    messagePerson.textContent = '받은 사람';
                    for(let res of responseResult) {
                        // console.log(res);
                        contentTag += `<tr>
<!--                                    <th>-->
<!--                                        <label>-->
<!--                                            <input type="checkbox" class="checkbox mp-msg-check"/>-->
<!--                                        </label>-->
<!--                                    </th>-->
                                    <td><b>\${res.partyNumber}</b></td>
                                    <td>
                                        <div class="space-x-3">
                                            <div>
                                                <div class="font-bold"></div>
                                                <div class="text-sm opacity-50">\${res.memberNickname}</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="mp-msg-content">
                                        <a href="" class="mp-send-message-content">
                                            \${res.partyMessageContent}
                                        </a>
                                    </td>
                                    <td>\${res.partyMessageTime}</td>
                                    <th>
                                    </th>
                                </tr>`;
                    }                    // console.log('tag : ' + contentTag);
                    MessageContent.innerHTML = contentTag;
                }
            }

            // 받은 쪽지함 목록 렌더링 함수
            function renderReceiveMessageList(responseResult) {
                let contentTag = '';
                
                if (responseResult === null) {

                } else {
                    messagePerson.textContent = '보낸 사람';
                    for(let res of responseResult) {
                        // console.log(res);
                        contentTag += `<tr>
<!--                                    <th>-->
<!--                                        <label>-->
<!--                                            <input type="checkbox" class="checkbox mp-msg-check"/>-->
<!--                                        </label>-->
<!--                                    </th>-->
                                    <td><b>\${res.partyNumber}</b></td>
                                    <td>
                                        <div class="space-x-3">
                                            <div>
                                                <div class="font-bold"></div>
                                                <div class="text-sm opacity-50">\${res.memberNickname}</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="mp-msg-content">
                                        <a href="" class="mp-receive-message-content">
                                            \${res.partyMessageContent}
                                        </a>
                                    </td>
                                    <td>\${res.partyMessageTime}</td>
                                    <th>
                                        <button class="btn btn-ghost btn-xs receive-btn">답장하기</button>
                                    </th>
                                </tr>`;
                    }
                    // console.log('tag : ' + contentTag);
                    MessageContent.innerHTML = contentTag;
                }
            }

            function getReceiveMessageList(memberNum) {
                fetch('/jeju-camps/api/v1/mypages/receive/' + memberNum)
                    .then(res => res.json())
                    .then(responseResult => {
                        // console.log(responseResult);
                        renderReceiveMessageList(responseResult);
                    })
            }

            // 받은메세지 버튼 클릭 이벤트
            $receiveMessageBtn.onclick = e => {
                getReceiveMessageList(memberNum);
            }

            // 보낸메세지 버튼 클릭 이벤트
            $sendMessageBtn.onclick = e => {
                getSendMessageList(memberNum);
            }

            function getSendMessageList(memberNum) {
                fetch('/jeju-camps/api/v1/mypages/send/' + memberNum)
                    .then(res => res.json())
                    .then(responseResult => {
                        // console.log(responseResult);
                        renderSendMessageList(responseResult);
                    })
            }

            // 개인정보 수정 버튼 클릭 이벤트
            $updateBtn = document.querySelector('.update-btn');
            $updateBtn.onclick = e => {
                window.location.href='/jeju-camps/mypage/update/' + memberNum;
            }

            // 메인 실행부
            (function () {
                getMemberInfo(memberNum);
                getPartyList(memberNum);
                // getSendMessageList(memberNum);
                getReceiveMessageList(memberNum);
            })();
        </script>
</body>
</html>