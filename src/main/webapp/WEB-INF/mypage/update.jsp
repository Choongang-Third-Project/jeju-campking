<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원 정보 수정</title>

    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- css -->
    <link rel="stylesheet" href="/assets/mypage/css/update.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%-- js --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.tailwindcss.com"></script>


</head>
<body>

<div class="back-btn">
    <i class="fa-solid fa-arrow-left"></i>
</div>
<div class="wrapper">
    <div>
        <h1>개인정보 수정</h1>
    </div>

    <form action="/jeju-camps/api/v1/mypages-update/${memberNumber}" id="update-form" name="updateForm" method="post" enctype="multipart/form-data">
        <input type="hidden" name="memberNumber" value=${memberNumber}>
        <div class="profile">
            <div class="thumbnail-box">
                <c:choose>
                    <c:when test="${member.profileImage != null}">
                        <img src="/local${member.profileImage}" alt="프로필 사진">
                    </c:when>
                    <c:otherwise>
                        <img src="/assets/signup/img/img-add.png" alt="프로필 썸네일">
                    </c:otherwise>
                </c:choose>
            </div>
            <label>프로필 이미지 변경</label>
            <input type="file" id="profile-img-change" accept="image/*" style="display: none;" name="profileImage">
        </div>

        <div class="container">
            <%-- 이메일 --%>
            <div class="box">
                <h2><label for="email">이메일</label></h2>
                <p>
                    <span id="email" class="w-full not-change-column">${member.memberEmail}</span>
                </p>
<%--                <span id="emailChk"></span>--%>
            </div>

            <!-- 비밀번호 입력  -->
            <div class="box">
                <h2><label for="pw1">비밀번호</label></h2>
                <p>
                    <input type="password" id="pw1" name="memberPassword" maxlength="20"
                           class="input input-bordered w-full" placeholder="영문자, 숫자, 특수문자 포함 (8~15자)">
                </p>
                <span id="pwChk1"></span>
            </div>

            <div class="box">
                <h2><label for="pw2">비밀번호 확인</label></h2>
                <p>
                    <input type="password" id="pw2" name="memberPasswordChk" maxlength="20"
                           class="input input-bordered w-full">
                </p>
                <span id="pwChk2"></span>
            </div>


            <!-- 이름, 닉네임 입력 -->
            <div class="box">
                <h2><label for="name">이름</label></h2>
                <p>
                    <span id="name" class="w-full not-change-column">${member.memberName}</span>
                </p>
<%--                <span id="nameChk"></span>--%>
            </div>

            <div class="box">
                <h2><label for="nickname">닉네임</label></h2>
                <p>
                    <input type="text" id="nickname" name="memberNickname" maxlength="10"
                           class="input input-bordered w-full" value=${member.memberNickname}>
                </p>
                <span id="nicknameChk"></span>
            </div>

            <!-- 생년월일 입력  -->

            <div class="box">
                <h2><label for="age">나이</label></h2>

                <div id="age_wrap">
                    <span id="age" class="w-full not-change-column">${member.memberAge}</span>
                </div>
            </div>


            <!-- 성별 -->
            <div class="box">
                <h2><label for="gender">성별</label></h2>
                <div id="gender_wrap" class="w-full not-change-column">
                    <span id="gender">
                        <c:if test="${member.memberGender=='M'}">
                            남자
                        </c:if>
                        <c:if test="${member.memberGender=='F'}">
                            여자
                        </c:if>
                    </span>
                </div>
<%--                <span id="genderChk"></span>--%>
            </div>


            <!-- 연락처 -->
            <div class="box">
                <h2><label for="phone">휴대전화</label></h2>
                <p>
                    <input type="text" id="phone" name="memberPhone" oninput="autoHyphen(this)" maxlength="13"
                           class="input input-bordered w-full" value=${member.memberPhone}>
                </p>
                <span id="phoneChk"></span>
            </div>


            <!-- 가입하기 버튼 -->
            <div class="btn-area">
                <button type="button" id="update-btn">수정하기</button>
            </div>
    </form>

</div>

<%--------------------------- 스크립트 -----------------------------%>

<script>

    // 페이지 접속 시 회원번호, 닉네임, 전화번호 가져오기
    const memberNum = '${member.memberNumber}';
    const memberNickname = '${member.memberNickname}';
    const memberPhone = '${member.memberPhone}';

    // 전화번호 입력시 하이픈 양식으로 자동 변경
    const autoHyphen = e => {
        let removeHypenPhoneValue = e.value.replaceAll('-', '');
        if (removeHypenPhoneValue.length == 10) {
            e.value = e.value
                .replace(/[^0-9]/g, '')
                .replace(/^(\d{0,3})(\d{0,3})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
        }
        if (removeHypenPhoneValue.length == 11) {
            e.value = e.value
                .replace(/[^0-9]/g, '')
                .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
        }
    }

    // 수정할 태그 가져오기
    const $password = document.getElementById('pw1');
    const $passwordCheck = document.getElementById('pw2');
    const $nickname = document.getElementById('nickname');
    const $phone = document.getElementById('phone');

    // 프로필 사진 변경
    const $profile = document.querySelector('.profile');
    const $profileImage = document.getElementById('profile-img-change');
    // 프로필 추가 영역 클릭 이벤트
    $profile.onclick = e => {
        $profileImage.click();
    };
    // 프로필 사진 변경 선택시 썸네일 뜨는 이벤트
    $profileImage.onchange = e => {
        const fileData = $profileImage.files[0];

        const reader = new FileReader();

        reader.readAsDataURL(fileData);

        reader.onload = e => {
            const $thumbnail = document.querySelector('.thumbnail-box img')
            $thumbnail.setAttribute('src', reader.result);
        };
    };

    // 비밀번호, 닉네임, 전화번호 입력값 검증 통과 여부 배열
    const checkResultList = [false, false, false, false];

    // 수정하기 버튼 클릭 이벤트
    // 프로필사진 제외 비밀번호, 닉네임, 전화번호의 입력칸이 모두 true 일 경우 form 태그를 submit
    const $updateBtn = document.getElementById('update-btn');
    const $form = document.getElementById('update-form');
    $updateBtn.onclick = e => {
        if (!checkResultList.includes(false)) {
            toastr.success("회원님의 정보가 정상적으로 수정되었습니다.");

            setTimeout(() => {
                $form.submit();
            }, 3000);
        } else {
            toastr.error("회원님의 정보 수정에 실패하였습니다.");
        }
    }

    // 비밀번호 입력값 검증
    // 비밀번호 검사 정규 표현식
    const passwordPattern = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

    $password.onkeyup = e => {
        const pwValue = $password.value;
        console.log(pwValue);

        if (pwValue.trim() === '') {
            $password.style.borderColor = 'red';
            document.getElementById('pwChk1').innerHTML = '<b style="color: red; font-size:13px; ">필수 정보입니다.</b>';
            checkResultList[0] = false;
        } else if (!passwordPattern.test(pwValue)) {
            $password.style.borderColor = 'red';
            document.getElementById('pwChk1').innerHTML = '<b style="color: red; font-size:13px; ">영문자, 숫자, 특수문자를 포함하여 8~15자 내외로 작성하세요.</b>';
            checkResultList[0] = false;
        } else {
            $password.style.borderColor = 'limegreen';
            document.getElementById('pwChk1').innerHTML = '<b style="color: limegreen; font-size:13px; ">사용가능한 비밀번호입니다.</b>'
            checkResultList[0] = true;
        }
    };

    // 비밀번호 확인란 입력값 검증
    $passwordCheck.onkeyup = e => {
        const pwCheckValue = $passwordCheck.value;
        if (pwCheckValue.trim() === '') {
            $password.style.borderColor = 'red';
            document.getElementById('pwChk2').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
            checkResultList[1] = false;
        } else if ($passwordCheck.value !== $password.value) {
            $password.style.borderColor = 'red';
            document.getElementById('pwChk2').innerHTML = '<b style="color: red; font-size:13px;">비밀번호가 일치하지 않습니다.</b>';
            checkResultList[1] = false;
        } else {
            $password.style.borderColor = 'limegreen';
            document.getElementById('pwChk2').innerHTML = '<b style="color: limegreen; font-size:13px;">비밀번호가 일치합니다.</b>'
            checkResultList[1] = true;
        }
    };

    // 닉네임 입력값 검증
    const nicknamePattern = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]+$/;

    $nickname.onkeyup = e => {

        const nicknamValue = $nickname.value;

        if (nicknamValue.trim() === '') {
            $nickname.style.borderColor = 'red';
            document.getElementById('nicknameChk').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
            checkResultList[2] = false;
        } else if (!nicknamePattern.test(nicknamValue)) {
            $nickname.style.borderColor = 'red';
            document.getElementById('nicknameChk').innerHTML = '<b style="color: red; font-size:13px;">한글, 영문, 숫자로 입력하세요</b>';
            checkResultList[2] = false;
        } else {
            fetch('/member/check?type=nickname&keyword=' + nicknamValue)
                .then(res => res.json())
                .then(flag => {
                    if (flag) {
                        $nickname.style.borderColor = 'red';
                        document.getElementById('nicknameChk').innerHTML = '<b style="color: red; font-size:13px;">이미 존재하는 닉네임입니다.</b>';
                        checkResultList[2] = false;
                    } else {
                        $nickname.style.borderColor = 'limegreen';
                        document.getElementById('nicknameChk').innerHTML = '<b style="color: limegreen; font-size:13px;">사용가능한 닉네임입니다</b>';
                        checkResultList[2] = true;
                    }
                });
        }

    };

    // 휴대전화 입력값 검증
    const phonePattern = /^\d{3}-\d{3,4}-\d{4}$/;
    $phone.onkeyup = e => {

        const phoneValue = $phone.value;
        const removeHypenPhoneValue = phoneValue.replaceAll('-', '');

        if (removeHypenPhoneValue.trim() === '') {
            $phone.style.borderColor = 'red';
            document.getElementById('phoneChk').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
            checkResultList[3] = false;
        } else if (!phonePattern.test(phoneValue)) {
            $phone.style.borderColor = 'red';
            document.getElementById('phoneChk').innerHTML = '<b style="color: red; font-size:13px;">휴대전화 번호양식을 지켜주세요.</b>';
            checkResultList[3] = false;
        } else if (removeHypenPhoneValue === memberPhone) {
            checkResultList[3] = true;
        } else {
            console.log(removeHypenPhoneValue);
            fetch('/jeju-camps/api/v1/mypages-update/check?type=phone&keyword=' + removeHypenPhoneValue)
                .then(res => res.json())
                .then(flag => {
                    if (flag) {
                        $phone.style.borderColor = 'red';
                        document.getElementById('phoneChk').innerHTML = '<b style="color: red; font-size:13px;">이미 등록된 연락처입니다.</b>';
                        checkResultList[3] = false;
                    } else {
                        $phone.style.borderColor = 'limegreen';
                        document.getElementById('phoneChk').innerHTML = '<b style="color: limegreen; font-size:13px;">사용가능한 연락처입니다</b>';
                        checkResultList[3] = true;
                    }
                });
        }
    };

    // 프로필사진 변경 이벤트

    // 뒤로가기 버튼 클릭 이벤트
    document.querySelector('.back-btn').onclick = e => {
        window.history.back();
    }

<%-- 메인 실행부 --%>
    (function () {
    })();

</script>


</body>
</html>