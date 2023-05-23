  
  
  
  
  
  // 프로필 사진 관련 스크립트
  const $profile = document.querySelector('.profile');
  const $fileInput = document.getElementById('profile-img');
  // 프로필 추가 영역 클릭 이벤트
  $profile.onclick = e => {
      $fileInput.click();
  };

  // 프로필 사진 선택시 썸네일 이벤트
  $fileInput.onchange = e => {
      // 첨부한 파일의 데이터를 읽어오기
      const fileData = $fileInput.files[0];

      // console.log(fileData);
      // 첨부파일의 바이트데이터를 읽어들이는 객체 생성
      const reader = new FileReader();

      // 파일의 바이트데이터를 읽어서 img태그의 src속성이나 
      // a태그의 href속성에 넣기 위한 형태로 읽음
      reader.readAsDataURL(fileData);
      
      // 첨부파일이 등록되는 순간 img태그에 이미지를 세팅
      reader.onloadend = e => {
          const $imgTag = document.querySelector('.thumbnail-box img');
          $imgTag.setAttribute('src', reader.result);
      };
  };


 
 
 
 // 입력값 검증 통과 여부 배열
 const checkResultList = [false, false, false, false, false, false, false, false];


 // 이메일 검사 정규표현식
 const emailPattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

 // 이메일 입력값 검증
 const $emailInput = document.getElementById('email');

 $emailInput.onkeyup = e => {

     const emailValue = $emailInput.value;
     // console.log(emailValue);

     if (emailValue.trim() === '') {
         $emailInput.style.borderColor = 'red';
         document.getElementById('emailChk').innerHTML = '<b style="color: red; font-size: 13px;">필수 정보입니다.</b>';
         checkResultList[0] = false;
     } else if (!emailPattern.test(emailValue)) {
         $emailInput.style.borderColor = 'red';
         document.getElementById('emailChk').innerHTML = '<b style="color: red; font-size:13px; ">이메일 형식이 올바르지 않습니다.</b>';
         checkResultList[0] = false;
     } else {
         fetch('/member/check?type=email&keyword=' + emailValue)
             .then(res => res.json())
             .then(flag => {
                 if (flag) {
                     $emailInput.style.borderColor = 'red';
                     document.getElementById('emailChk').innerHTML = '<b style="color: red; font-size:13px; ">이미 가입된 이메일입니다.</b>';
                     checkResultList[0] = false;
                 } else {
                     $emailInput.style.borderColor = 'limegreen';
                     document.getElementById('emailChk').innerHTML = '<b style="color: limegreen; font-size:13px; ">사용가능한 이메일입니다</b>';
                     checkResultList[0] = true;
                 }
             });


     }

 };


 // 비밀번호 검사 정규 표현식

 const passwordPattern = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

 // 비밀번호 입력값 검증
 const $pwInput = document.getElementById('pw1');

 $pwInput.onkeyup = e => {
     const pwValue = $pwInput.value;
     console.log(pwValue);

     if (pwValue.trim() === '') {
         $pwInput.style.borderColor = 'red';
         document.getElementById('pwChk1').innerHTML = '<b style="color: red; font-size:13px; ">필수 정보입니다.</b>';
         checkResultList[1] = false;
     } else if (!passwordPattern.test(pwValue)) {
         $pwInput.style.borderColor = 'red';
         document.getElementById('pwChk1').innerHTML = '<b style="color: red; font-size:13px; ">영문자, 숫자, 특수문자를 포함하여 8~15자 내외로 작성하세요.</b>';
         checkResultList[1] = false;
     } else {
         $pwInput.style.borderColor = 'limegreen';
         document.getElementById('pwChk1').innerHTML = '<b style="color: limegreen; font-size:13px; ">사용가능한 비밀번호입니다.</b>'
         checkResultList[1] = true;
     }


 };




 // 비밀번호 확인란 입력값 검증
 const $pwCheckInput = document.getElementById('pw2');

 $pwCheckInput.onkeyup = e => {

     const pwCheckValue = $pwCheckInput.value;

     if (pwCheckValue.trim() === '') {
         $pwInput.style.borderColor = 'red';
         document.getElementById('pwChk2').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
         checkResultList[2] = false;
     } else if ($pwCheckInput.value !== $pwInput.value) {
         $pwInput.style.borderColor = 'red';
         document.getElementById('pwChk2').innerHTML = '<b style="color: red; font-size:13px;">비밀번호가 일치하지 않습니다.</b>';
         checkResultList[2] = false;
     } else {
         $pwInput.style.borderColor = 'limegreen';
         document.getElementById('pwChk2').innerHTML = '<b style="color: limegreen; font-size:13px;">비밀번호가 일치합니다.</b>'
         checkResultList[2] = true;
     }

 };



 // 이름 입력값 검증
 const namePattern = /^[가-힣]+$/;

 const $nameInput = document.getElementById('name');

 $nameInput.onkeyup = e => {

     const nameValue = $nameInput.value;

     if (nameValue.trim() === '') {
         $nameInput.style.borderColor = 'red';
         document.getElementById('nameChk').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
         checkResultList[3] = false;
     } else if (!namePattern.test(nameValue)) {
         $nameInput.style.borderColor = 'red';
         document.getElementById('nameChk').innerHTML = '<b style="color: red; font-size:13px;">이름은 한글로 작성하세요.</b>';
         checkResultList[3] = false;
     } else {
         $nameInput.style.borderColor = 'limegreen';
         document.getElementById('nameChk').innerHTML = '<b style="color: limegreen; font-size:13px;">사용가능한 이름입니다.</b>'
         checkResultList[3] = true;
     }
 };


 // 닉네임 입력값 검증
 const nicknamePattern = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]+$/;

 const $nicknameInput = document.getElementById('nickname');

 $nicknameInput.onkeyup = e => {

     const nicknamValue = $nicknameInput.value;

     if (nicknamValue.trim() === '') {
         $nicknameInput.style.borderColor = 'red';
         document.getElementById('nicknameChk').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
         checkResultList[4] = false;
     } else if (!nicknamePattern.test(nicknamValue)) {
         $nicknameInput.style.borderColor = 'red';
         document.getElementById('nicknameChk').innerHTML = '<b style="color: red; font-size:13px;">한글, 영문, 숫자로 입력하세요</b>';
         checkResultList[4] = false;
     } else {

         fetch('/member/check?type=nickname&keyword=' + nicknamValue)
             .then(res => res.json())
             .then(flag => {
                 if (flag) {
                     $nicknameInput.style.borderColor = 'red';
                     document.getElementById('nicknameChk').innerHTML = '<b style="color: red; font-size:13px;">이미 존재하는 닉네임입니다.</b>';
                     checkResultList[4] = false;
                 } else {
                     $nicknameInput.style.borderColor = 'limegreen';
                     document.getElementById('nicknameChk').innerHTML = '<b style="color: limegreen; font-size:13px;">사용가능한 닉네임입니다</b>';
                     checkResultList[4] = true;
                 }
             });
     }

 };

 // 생년월일 (나이) 입력값 검증
function getBirth() {

    const birthInput = document.getElementById('birth');

    birthInput.onchange = () => {
        const yearValue = birthInput.value.split('-')[0]; // 년도만 추출

        // 현재 날짜와의 차이 계산
        const currentDate = new Date();
        const currentYear = currentDate.getFullYear();
        const ageDifference = currentYear - parseInt(yearValue);

        const $memberAge = document.getElementById('memberAge');
        $memberAge.value = ageDifference;
        // console.log(ageDifference);

        if (birthInput.value === '') {
            document.getElementById('ageChk').innerHTML = '';
        } else if (birthInput.value > currentDate.toISOString().split('T')[0]) {
            document.getElementById('ageChk').innerHTML = '<b style="color: red; font-size:13px;">생년월일을 확인해주세요.</b>';
            checkResultList[5] = false;
        } else if (ageDifference < 19) {
            document.getElementById('ageChk').innerHTML = '<b style="color: red; font-size:13px;">만 19세 미만은 회원 가입이 불가합니다.</b>';
            checkResultList[5] = false;
        } else {
            document.getElementById('ageChk').innerHTML = '<b style="color: limegreen; font-size:13px;">회원 가입이 가능합니다.</b>';
            checkResultList[5] = true;
        }
    };
}

getBirth();

 // 성별 입력
 checkResultList[6] = true;

 // 연락처 하이픈 자동 변경
 const autoHyphen = e => {
     e.value = e.value
         .replace(/[^0-9]/g, '')
         .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
 }



 // 연락처 입력값 검증
 const phonePattern = /^\d{3}-\d{3,4}-\d{4}$/;

 const $phoneInput = document.getElementById('phone');

 $phoneInput.onkeyup = e => {

     const phoneValue = $phoneInput.value;

     if (phoneValue.trim() === '') {
         $phoneInput.style.borderColor = 'red';
         document.getElementById('phoneChk').innerHTML = '<b style="color: red; font-size:13px;">필수 정보입니다.</b>';
         checkResultList[7] = false;
     } else if (!phonePattern.test(phoneValue)) {
         $phoneInput.style.borderColor = 'red';
         document.getElementById('phoneChk').innerHTML = '<b style="color: red; font-size:13px;">휴대전화 번호양식을 지켜주세요.</b>';
         checkResultList[7] = false;
     } else {
         fetch('/member/check?type=phone&keyword=' + phoneValue)
             .then(res => res.json())
             .then(flag => {
                 if (flag) {
                     $phoneInput.style.borderColor = 'red';
                     document.getElementById('phoneChk').innerHTML = '<b style="color: red; font-size:13px;">이미 등록된 연락처입니다.</b>';
                     checkResultList[7] = false;
                 } else {
                     $phoneInput.style.borderColor = 'limegreen';
                     document.getElementById('phoneChk').innerHTML = '<b style="color: limegreen; font-size:13px;">사용가능한 연락처입니다</b>';
                     checkResultList[7] = true;
                 }
             });

     }

 };






 // 회원가입 버튼 클릭 이벤트
 document.getElementById('signup-btn').onclick = e => {

     // 8개의 입력칸이 모두 통과되었을 경우 폼을 서브밋
     const $form = document.getElementById('signUpForm');

     if (!checkResultList.includes(false)) {
        toastr.success("회원가입이 완료되었습니다.");

        setTimeout(() => {
            $form.submit();
        }, 3000);

     } else {
        toastr.error("회원가입에 실패하였습니다.");
        
     }
 };

