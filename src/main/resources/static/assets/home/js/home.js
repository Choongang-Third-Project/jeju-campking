// // 자동 슬라이드 쇼 구현
// let currentSlide = 0;
// const slides = document.querySelectorAll(".new-container ul#slideshow li");
//
// function showSlide() {
//     // 현재 슬라이드를 보이지 않도록 설정
//     slides[currentSlide].style.display = "none";
//
//     // 다음 슬라이드로 이동
//     currentSlide = (currentSlide + 1) % slides.length;
//
//     // 다음 슬라이드를 보이도록 설정
//     slides[currentSlide].style.display = "block";
// }
//
// // 3초마다 슬라이드 전환
// setInterval(showSlide, 1000);


var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("new-img-box");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1;
    }
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 2000); // 2초마다 슬라이드 전환
}