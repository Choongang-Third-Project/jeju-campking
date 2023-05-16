// drop down
const $dropContent = document.getElementById("drop-content");
const $btn = document.querySelector('.smbtn');

$btn.onclick = () => {
    $dropContent.style.display = "block"; 
};

$btn.parentElement.onmouseleave = () => {
    $dropContent.style.display = "none"; 
};


// hashtag
function showNextLi() {
    var $lis = document.querySelectorAll('section.main .hashtag li');
    var visibleIndex = -1;

    for (var i = 0; i < $lis.length; i++) {
        if ($lis[i].style.display !== 'none') {
            visibleIndex = i;
            break;
        }
    }

    if (visibleIndex >= 0) {
        $lis[visibleIndex].style.display = 'none';
    }

    let nextIndex = (visibleIndex + 1) % $lis.length;
    $lis[nextIndex].style.display = 'block';
}

setInterval(showNextLi, 2000);


// 뉴앤업데이트
const slides = document.querySelectorAll(".new-container ul#slideshow li");
const slideCount = slides.length;
let currentSlide = 0;


function showSlide() {

    slides[currentSlide].classList.remove("selected");

    currentSlide = (currentSlide + 1) % slideCount;

    slides[currentSlide].classList.add("selected");
}

slides[currentSlide].classList.add("selected");

setInterval(showSlide, 1000);



// notice banner
function showNextBanner() {
    var $lis = document.querySelectorAll('section.notice .notice-box .banner li');
    var visibleIndex = -1;

    for (var i = 0; i < $lis.length; i++) {
        if ($lis[i].style.display !== 'none') {
            visibleIndex = i;
            break;
        }
    }

    if (visibleIndex >= 0) {
        $lis[visibleIndex].style.display = 'none';
    }

    let nextIndex = (visibleIndex + 1) % $lis.length;
    $lis[nextIndex].style.display = 'block';
}


setInterval(showNextBanner, 5000);