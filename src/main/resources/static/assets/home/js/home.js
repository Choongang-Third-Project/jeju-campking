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


// 순위에 따라 텍스트 색상 변경
const rank1 = document.getElementById('rank1');
const rank2 = document.getElementById('rank2');
const rank3 = document.getElementById('rank3');

rank1.style.color = 'red';
rank2.style.color = 'orange';
rank3.style.color = 'green';

// campName에도 순위에 따라 텍스트 색상 변경
const campName1 = document.getElementById('campName1');
const campName2 = document.getElementById('campName2');
const campName3 = document.getElementById('campName3');

campName1.style.color = 'red';
campName2.style.color = 'orange';
campName3.style.color = 'green';


const $searchBtn = document.getElementById('searchBtn');
const $search = document.querySelector('.search');

$searchBtn.onclick = e => {
    location.href = '/jeju-camps/info?search='+$search.value;
}

$search.addEventListener('keydown', (event) => {
    if (event.key === 'Enter') {
        location.href = '/jeju-camps/info?search='+$search.value;
    }
  });