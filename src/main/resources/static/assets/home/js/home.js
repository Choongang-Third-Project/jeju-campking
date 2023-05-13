// hashtag
function showNextLi() {
    var $lis = document.querySelectorAll('section.main .hashtag li'); 
    var visibleIndex = -1; 

    // 현재 표시 중인 li 요소를 찾음
    for (var i = 0; i < $lis.length; i++) {
        if ($lis[i].style.display !== 'none') {
            visibleIndex = i;
            break;
        }
    }

    // 현재 표시 중인 li 요소를 숨김 처리
    if (visibleIndex >= 0) {
        $lis[visibleIndex].style.display = 'none';
    }

    // 다음 li 요소를 표시
    let nextIndex = (visibleIndex + 1) % $lis.length;
    $lis[nextIndex].style.display = 'block';
}

setInterval(showNextLi, 1000);




// var slideIndex = 0;
// showSlides();
//
// function showSlides() {
//     var i;
//     var slides = document.getElementsByClassName("new-img-box");
//     for (i = 0; i < slides.length; i++) {
//         slides[i].style.display = "none";
//     }
//     slideIndex++;
//     if (slideIndex > slides.length) {
//         slideIndex = 1;
//     }
//     slides[slideIndex - 1].style.display = "block";
//     setTimeout(showSlides, 2000); // 2초마다 슬라이드 전환
// }