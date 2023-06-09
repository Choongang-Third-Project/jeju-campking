<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Items</title>

<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>


<!-- set -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>

<!-- css -->
<link rel="stylesheet" href="/assets/include/common.css">
<link rel="stylesheet" href="/assets/items/itemsLayout.css">



<style>
    #wrap .menu-container .content-box .main-box .sort-nav .btn-primary {
        border: 2px solid #000;
        font-size: 1.2em;
        
        background: #4021FF;
    }
    #wrap .menu-container .content-box .main-box .sort-nav .btn.btn-primary.price { 
        background: rgb(200, 45, 45);
    }


    #wrap .menu-container .content-box .main-box .content {
        height: 85%;
        width: 100%;

        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: row;
    }

    #wrap .menu-container .content-box .main-box .content .item-container {
        width: 70%;
        height: 100%;

        overflow-y: scroll;

        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: row;
        flex-wrap: wrap;
    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box {
        width: 50%;
        height: 50%;

        align-items: center;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item {
        width: 80%;
        height: 100%;

        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        text-align: center;

        padding-top: 5px;
        padding-bottom: 5px;

    }


    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu {
        border: 2px solid #004545;
        border-radius: 15px;
        background: #CED6D6;

        width: 100%;
        height: 100%;

        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;

        margin: 5px;

    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu .title-box {
        width: 100%;
        height: 15%;

        display: flex;
        flex-direction: row;
        justify-content: space-around;
        align-items: center;
    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu .item-img {
        position: relative;
        width: 90%;
        height: 60%;

        overflow: hidden;
        border-radius: 15px;

        border: 1px solid #000;
        transition: 1.3sec;
    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu .item-img .img {
        height: 100%;
        width: 100%;

        cursor: pointer;
        transition: transform 1s;
    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu .item-img .img:hover {
        transform: scale(1.5);

    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu .item-img .like {
        bottom: 3%;
        right: 3%;
        position: absolute;

        font-size: 1.5em;
        color: rgb(255, 0, 0);

        background: rgba(10, 10, 10, 0.5);

        height: 40px;
        width: 40px;
        border-radius: 20px;

    }

    #wrap .menu-container .content-box .main-box .content .item-container .item-box .item .item-menu .info {
        width: 95%;
        height: 25%;
    }






    /*--------------------- 장바구니 ---------------------*/

    #wrap .menu-container .content-box .main-box .content .order-box {
        width: 30%;
        height: 100%;
        background: #93C0C0;

        background: url('/assets/items/img/item-fire.png') no-repeat center / cover;
        background-size: 80%;
    }




    /*--------------------- 마우스 ---------------------*/

    #cursorFollower {
        width: 50px;
        height: 50px;
        position: absolute;

        z-index: 1;
        pointer-events: none;
        background: url('/assets/items/img/item-mouse.png') no-repeat center / cover;
    }

</style>

</head>

<body>
<div id="cursorFollower"></div>

<div id="wrap">

    <div class="header">

        <div class="title-box">
            <h1 class="title">캠프킹의 장비</h1>
        </div>


        <div class="side-container">
            <ul class="side-nav">
                <button class="menu-btn btn btn-outline">first-menu</button>
                <button class="menu-btn btn btn-outline">second-menu</button>
                <button class="menu-btn btn btn-outline">third-menu</button>
                <button class="menu-btn btn btn-outline">
                    <a href='/jeju-camps'>돌아가기</a>
                </button>
            </ul>
        </div>

    </div>

    <div class="menu-container">

        <div class="category-menu">
            <ul class="category-nav">
                <div>
                    <button id="item-highcost" class="btn btn-primary">고가 장비</button>
                </div>
                <div>
                    <button id="item-event" class="btn btn-primary">이벤트 장비</button>
                </div>
                <div>
                    <button id="item-consumable" class="btn btn-primary">소모품</button>
                </div>
                <div>
                    <button id="item-food" class="btn btn-primary">음식</button>
                </div>
            </ul>
        </div>

        <div class="content-box">

            <div class="main-box">
                <ul class="sort-nav">
                    <button class="btn btn-primary">인기순</button>
                    <button id="price-sort" class="btn btn-primary">가격순</button>
                    <button id="category-sort1"class="btn btn-primary">카테고리</button>
                    <button id="category-sort2"class="btn btn-primary">카테고리</button>
                    <button id="category-sort3"class="btn btn-primary">카테고리</button>
                    <button id="category-sort4"class="btn btn-primary">카테고리</button>
                </ul>

                <div class="content">

                    <div class="order-box">
                        <div class="order-basket 장바구니"></div>
                    </div>

                    <ul class="item-container">


                        
                        <li class="item-box">
                            <div class="item">
                                <div class="item-menu">
                                    <div class="title-box">
                                        <div class="name">삼겹살</div>
                                        <div class="price">12,000₩</div>
                                    </div>
                                    <div class="item-img">
                                        <div class="img"
                                            style="background: url(/assets/items/img/meet2.png) no-repeat center / cover">
                                        </div>

                                        <div class="like">
                                            <label class="swap">
                                                <input type="checkbox" />
                                                <div class="swap-on">
                                                    <i class="fa-solid fa-heart"></i>
                                                </div>
                                                <div class="swap-off">
                                                    <i class="fa-regular fa-heart"></i>
                                                </div>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="info">
                                        돼지의 갈비 부근에 붙은 돼지 뱃살 부위를 지칭한다.
                                        비계가 세 겹으로
                                    </div>
                                    <!-- <div class="cart">cart</div> -->
                                </div>
                            </div>
                        </li>



                    </ul>

                </div>

            </div>

        </div>

    </div>

</div>


<script>
    const $itemContainer = document.getElementsByClassName('item-container')[0];

    let type = '';
    let typeNumber = 1;
    
    let $foodCategory = [];
    let $eventCategory = [];
    let $highcostCategory = [];
    let $consumableCategory = [];

    const $price = 'price';


    // 카테코리별 보기
    const $itemFood = document.getElementById('item-food');
    const $itemEvent = document.getElementById('item-event');
    const $itemHighcost = document.getElementById('item-highcost');
    const $itemConsumable = document.getElementById('item-consumable');
    

    // 카테고리 보기
    const $categorySort = document.getElementById('category-sort');
    const $categorySort1 = document.getElementById('category-sort1');
    const $categorySort2 = document.getElementById('category-sort2');
    const $categorySort3 = document.getElementById('category-sort3');
    const $categorySort4 = document.getElementById('category-sort4');




    // 

    function inputCategory() {
        if (type === 'food') {
            $categorySort1.innerText = '과일';
            $categorySort2.innerText = '채소';
            $categorySort3.innerText = '고기';
            $categorySort4.innerText = '해산물';
        } else if (type === 'event') {
            $categorySort1.innerText = '생일파티';
            $categorySort2.innerText = '프로포즈';
            $categorySort3.innerText = '어버이날';
            $categorySort4.innerText = '기타파티용품';
        } else if (type === 'highcost') {
            $categorySort1.innerText = '텐트';
            $categorySort2.innerText = '침낭';
            $categorySort3.innerText = '테이블';
            $categorySort4.innerText = '스토브';
        } else if (type === 'consumable') {
            $categorySort1.innerText = '토치';
            $categorySort2.innerText = '장작';
            $categorySort3.innerText = '랜턴';
            $categorySort4.innerText = '물티슈';
        }
    }


    // 가격순 보기
    const $priceSort = document.getElementById('price-sort');


    $categorySort1.addEventListener('click', e => {
        inputTag(`/api/v1/items/` + type + `/category/1`);
    });


    $categorySort2.addEventListener('click', e => {
        inputTag(`/api/v1/items/` + type + `/category/2`);
    });


    $categorySort3.addEventListener('click', e => {
        inputTag(`/api/v1/items/` + type + `/category/3`);
    });


    $categorySort4.addEventListener('click', e => {
        inputTag(`/api/v1/items/` + type + `/category/4`);
    });












    
    $priceSort.addEventListener('click', e => {
        $priceSort.classList.toggle($price);
        
        if ($priceSort.classList.contains($price)) {
            typeNumber = 2;
        } else {
            typeNumber = 1;
        }

        inputTag(`/api/v1/items/` + type + `/price/` + typeNumber);
    });


    // ------------------------ item click event ------------------------ //
    $itemConsumable.addEventListener('click', e => {
        type = 'consumable';
        $priceSort.classList.remove($price);
        inputTag('/api/v1/items/consumable');
        inputCategory();
    });
    
    
    $itemFood.addEventListener('click', e => {
        type = 'food';
        $priceSort.classList.remove($price);
        inputTag('/api/v1/items/food');        
        inputCategory();
    });
    
    
    $itemEvent.addEventListener('click', e => {
        type = 'event';
        $priceSort.classList.remove($price);
        inputTag('/api/v1/items/event');
        inputCategory();
    });
    
    
    $itemHighcost.addEventListener('click', e => {
        type = 'highcost';
        $priceSort.classList.remove($price);
        inputTag('/api/v1/items/highcost');
        inputCategory();
    });
    
    
    //---------------------- tag 생성 함수 ----------------------//
    function inputTag(url) {
        fetch(url)
            .then(res => {
                return res.json()
            })
            .then(response => {

                $itemContainer.innerHTML = '';
                $itemContainer.scrollTo(0, 0);

                for (let input of response.payload) {

                    let list = Object.values(input);

                    if ($foodCategory.length !== 4 && type === 'food') {
                        if ($foodCategory.indexOf(list[4]) === -1) {
                            $foodCategory.push(list[4]);
                        }
                    } else if ($eventCategory.length !== 4 && type === 'event') {
                        if ($eventCategory.indexOf(list[4]) === -1) {
                            $eventCategory.push(list[4]);
                        }
                    } else if ($highcostCategory.length !== 4 && type === 'highcost') {
                        if ($highcostCategory.indexOf(list[4]) === -1) {
                            $highcostCategory.push(list[4]);
                        }
                    } else if ($consumableCategory.length !== 4 && type === 'consumable') {
                        if ($consumableCategory.indexOf(list[4]) === -1) {
                            $consumableCategory.push(list[4]);
                        }
                    }

                    let tag = `<li class="item-box">
                <div class="item">
                    <div class="item-menu">
                        <div class="title-box">
                            <div class="name">` + list[1] + `</div>
                            <div class="price">` + list[2] + `₩</div>
                        </div>
                        <div class="item-img">
                            <div class="img"
                                style="background: url(` + list[5] + `) no-repeat center / cover">
                            </div>

                            <div class="like">
                                <label class="swap">
                                    <input type="checkbox" />
                                    <div class="swap-on">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                    <div class="swap-off">
                                        <i class="fa-regular fa-heart"></i>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="info">
                            ` + list[3] + `
                        </div>
                    </div>
                </div>
            </li>`

                    document.getElementsByClassName('item-container')[0].innerHTML += tag;
                }
            });
    }






    // 마우스 이벤트
    const cursorFollower = document.getElementById("cursorFollower");

    document.onmousemove = (e) => {
        cursorFollower.style.left = e.pageX + 10 + "px";
        cursorFollower.style.top = e.pageY + 10 + "px";
    }


</script>


</body>

</html>