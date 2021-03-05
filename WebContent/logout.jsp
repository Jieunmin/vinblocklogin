<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VINBLOCK</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <link rel="apple-touch-icon" sizes="180x180" href="ico/">
    <link rel="icon" type="image/png" sizes="32x32" href="ico//favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="ico//favicon-16x16.png">
    <link rel="manifest" href="ico//site.webmanifest">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
</head>

<body>
<%
//세션 체크
String userId = null;
if (session.getAttribute("userId") != null){
	userId = (String)session.getAttribute("userId");
}
%>
    <div id="wrap">
        <header class="header">
            <div class="inner">
                <div class="logo">
                    <a href=""><img src="image/logo.png" alt="logo"></a>
                </div>
                <ul class="left">
                    <li><button id="click1">ABOUT US</button></li>
                    <li><button id="click2">HOW IT WORKS</button></li>
                    <li><button id="click3">이달의 와인</button></li>
                </ul>
                <ul class="right">
                    <li><button id="click5">REVIEW</button></li>
                    <li><button id="click4">FAQ</button></li>
                    <li><button></button><a href="board.jsp">게시판</a></button></li>
                    <li><button></button><a href="logoutaction.jsp">LOGOUT</a></button></li>
                </ul>
                <div class="sidebarWrap">
                    <div id="hamburger">
                        <button class="openbtn" onclick="openNav()">☰</button>
                    </div>
                    <div id="mySidebar" class="sidebar">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                        <a id="sidebarclick1">ABOUT US</a>
                        <a id="sidebarclick2">HOW IT WORKS</a>
                        <a id="sidebarclick3">이달의 와인</a>
                        <a id="sidebarclick5">REVIEW</a>
                        <a id="sidebarclick4">FAQ</a>
                        <a href="login.jsp">LOG IN</a>
                    </div>
                </div>
            </div>
        </header>
        <div class="main">
            <div class="mobilevideo">
                <video preload="auto" autoplay playsinline loop muted src="video/pouringwine.mp4"></video>
            </div>
            <div class="webvideo">
                <video preload="auto" autoplay playsinline loop muted src="video/wine.mp4"></video>
            </div>
            <h1>
                첫 와인블락은 내 취향으로
            </h1>
            <div class="highlight"><span></span></div>
            <button class="subscribe">구독하기</button>
        </div>
        <section class="aboutus">
            <div class="inner">
                <h3><span class="firstletter">A</span>BOUT US</h3>
                <div class="retail"><img src="image/aboutus.png" alt="aboutus"></div>
            </div>
            <div class="aboutustable">
                <div class="icons inner">
                    <img class="firsticon" src="icon/profits.png" alt="">
                    <img class="secondicon" src="icon/handshake.png" alt="">
                    <img src="icon/timeismoney.png" alt="">
                </div>
                <div class="describe inner">
                    <p class="firstdes">빈블락은 구독료를 전 세계<br>독립 와인제조업체에 투자합니다</p>
                    <p class="seconddes">저렴한 가격에 고품질의 와인을<br>독점 공급 받을 수 있습니다</p>
                    <p class="thirddes">와인 판매에 시간과<br>돈을 낭비하지 않습니다</p>
                </div>
            </div>
    </div>
    </section>
    <section class="howitworks">
        <div class="title inner">
            <h3><span class="firstletter">H</span>OW IT WORKS</h3>
        </div>
        <div class="steps inner">
            <div class="firststep">
                <div class="firsticon">
                    <span>1</span>
                    <img src="icon/online-test.png" alt="">
                </div>
                <p>첫 구독 전, 간단한 설문조사 후<br>랜덤으로 와인이 배송됩니다</p>
            </div>
            <div class="secondstep">
                <div class="secondicon">
                    <span>2</span>
                    <img src="icon/comments.png" alt="">
                </div>
                <p>받은 와인의<br>만족도를 리뷰합니다</p>
            </div>
            <div class="thirdstep">
                <div class="thirdicon">
                    <span>3</span>
                    <img src="icon/bottles.png" alt="">
                </div>
                <p>나의 취향에 더 부합하는<br>와인을 다음 달에 받습니다</p>
            </div>
        </div>
    </section>
    <section class="wineofthemonth">
        <div class="slide inner">
            <div>
                <img class="broc" src="image/Broc_Happi_Chenin.png" alt="">
                <div class="info">
                    <h3>이달의 와인</h3>
                    <h4>Broc Happi Chenin<br>2019 California Chenin Blanc</h4>
                    <h5>바디 ●●○○○<br>당도 ●○○○○<br>과일 ●●●●○</h5>
                    <h5 class="tastingnote">테이스팅 노트</h5>
                    <img src="image/tastingnote.png" alt="">
                </div>
            </div>
            <div>
                <img class="land" src="image/land_of_saints.png" alt="">
                <div class="info">
                    <h3>이달의 와인</h3>
                    <h4>Land of Saints<br>2019 California Pinot Noir</h4>
                    <h5>바디 ●●●○○<br>당도 ○○○○○<br>과일 ●○○○○</h5>
                    <h5 class="tastingnote">테이스팅 노트</h5>
                    <img src="image/tastingnote2.png" alt="">
                </div>
            </div>
        </div>
    </section>
    <section class="review">
        <div class="title inner">
            <h3><span class="firstletter">이</span>달의 리뷰</h3>
        </div>
        <div class="instagram inner">
            <ul>
                <li>
                    <div class="instareview">
                        <img src="image/review1.png" alt="">
                        <div class="reviewtext">
                            moonjeongwon님<br><br>
                            1월 와인박스 잘 받았습니다. 깨진 와인 없이 꼼꼼하게 포장되어 왔어요.
                        </div>
                    </div>
                </li>
                <li>
                    <div class="instareview">
                        <img src="image/review2.png" alt="">
                        <div class="reviewtext">
                            winelover님<br><br>
                            12월에 레드와인만 신청했었는데 제대로 배송되었어요!
                        </div>
                    </div>
                </li>
                <li>
                    <div class="instareview">
                        <img src="image/review3.png" alt="">
                        <div class="reviewtext">
                            fiction_non님<br><br>
                            깔끔한 화이트 와인은 생선요리와 함께 페어링하여 맛있게 먹었습니다 :)
                        </div>
                    </div>
                </li>
                <li>
                    <div class="instareview">
                        <img src="image/review4.png" alt="">
                        <div class="reviewtext">
                            hanbit_kim23님<br><br>
                            이번달에는 친구 선물용으로 한 박스 더 주문했는데 매우 만족합니다.
                        </div>
                    </div>
                </li>
                <li>
                    <div class="instareview">
                        <img src="image/review5.png" alt="">
                        <div class="reviewtext">
                            yangjeong2213님<br><br>
                            와인이 매달 목요일 쯤 배송되어 금요일에 재택근무 끝나고 와인 오픈하기 딱이에요 :D
                        </div>
                    </div>
                </li>
                <li>
                    <div class="instareview">
                        <img src="image/review6.png" alt="">
                        <div class="reviewtext">
                            rose5465451님<br><br>
                            아주 드라이한 레드와인으로 보내달라고 요청했었는데 이번 달에 온 레드와인 아주 만족합니다~
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <hr>
    </section>
    <section class="faq">
        <div class="inner">
            <div class="title">
                <h3><span class="firstletter">F</span>AQ</h3>
            </div>
            <div class="accordion">
                <div class="accordion-item">
                    <a>와인은 어떤 종류가 있나요?</a>
                    <div class="content">
                        <p>빈블락은 프랑스, 스페인, 포르투갈, 이탈리아, 남아공, 미국, 호주, 칠레에서 화이트, 레드, 로제,
                            스파클링, 내츄럴, 논알콜 와인을 공급 받고 있습니다. 포도의 품종은 매달 달라지며 받고 싶은 와인의 종류를 선택할 수 있습니다. 선택하지 않을 시, 랜덤으로
                            배송됩니다.
                        </p>
                    </div>
                </div>
                <div class="accordion-item">
                    <a>구독 빈도는 어떻게 되나요?</a>
                    <div class="content">
                        <p>한 달, 3개월, 6개월, 1년 단위로 구독할 수 있습니다.</p>
                    </div>
                </div>
                <div class="accordion-item">
                    <a>구독을 쉴 수 있나요?</a>
                    <div class="content">
                        <p>여행, 출장 등 개인적인 사정이 있거나 이달의 와인이 마음에 들지 않으면 원하는 달의 구독을 건너뛸 수 있습니다. 3개월 정기 구독 시 1번, 6개월에 2번, 1년에
                            4번
                            가능합니다. 고객센터로 전화 혹은 1:1 문의를 남겨주세요.</p>
                    </div>
                </div>
                <div class="accordion-item">
                    <a>구독 취소는 어떻게 하나요?</a>
                    <div class="content">
                        <p>오른쪽 상단 [나의 와인] - [내 구독] 메뉴에서 구독중인 상품을 확인 후 '구독 취소하기' 버튼을 누르시면 됩니다. 배송 상태가 '배송중' 혹은 '배송완료'인
                            상태인 경우
                            고객센터로 전화 혹은 1:1 문의를 남겨주세요.</p>
                    </div>
                </div>
                <div class="accordion-item">
                    <a>정기 구독 시 언제 배송되나요?</a>
                    <div class="content">
                        <p>매달 셋째 주 월요일 혹은 화요일에 출고되어 금요일까지 배송 완료될 수 있도록 노력하고 있습니다. 출고 알람은 카카오톡 플러스 메시지로 보내드립니다.</p>
                    </div>
                </div>
                <div class="accordion-item">
                    <a>화이트(레드) 와인만 받을 수 있나요?</a>
                    <div class="content">
                        <p>네, [나의 와인] - [내 구독] 메뉴에서 구독중인 상품을 선택 후 원하는 달의 선호 와인을 선택할 수 있습니다. 선택하지 않을 시 랜덤으로 배송됩니다.</p>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <footer>
        <div class="inner">
            <div class="leftmenu">
                <h5><a href="">ABOUT US</a></h5>
                <h5><a href="">HOW IT WORKS</a></h5>
                <h5><a href="">구독하기</a></h5>
                <h5><a href="">이달의 와인</a></h5>
                <h5><a href="">이용약관</a></h5>
                <h5><a href="">정보처리방침</a></h5>
            </div>
            <div class="rightmenu">
                <div class="sns">
                    <a href=""><img class="twitter" src="icon/twitter.png" alt=""></a>
                    <a href=""><img class="facebook" src="icon/facebook.png" alt=""></a>
                    <a href=""><img class="instagram" src="icon/instagram.png" alt=""></a>
                </div>
                <div class="address">
                    <h5>MON - SON / 10 - 7</h5>
                    <h5>서울광역시 강남구 논현로 854 1F</h5>
                    <h5>고객센터 070-5445-3421</h5>
                    <h5>contact@vinblock.co.kr</h5>
                </div>
            </div>
        </div>
    </footer>
    </div>
    <script>
        //slide
        $(document).ready(function () {
            $('.slide').bxSlider({
                auto: true,
                pause: 2500
            });
        });

        // accordion
        const items = document.querySelectorAll(".accordion a");

        function toggleAccordion() {
            this.classList.toggle('active');
            this.nextElementSibling.classList.toggle('active');
        }
        items.forEach(item => item.addEventListener('click', toggleAccordion));

        //fixedmenu
        $(document).scroll(function () {
            if ($(this).scrollTop() > 240) {
                $('.header').fadeIn();
            } else {
                $('.header').fadeOut();
            }
        });

        //scrolldownpage
        $(document).ready(function () {
            $("#click1").click(function () {
                $('html, body').animate({
                    scrollTop: $(".aboutus").offset().top - 56
                }, 1000);
            });
            $("#sidebarclick1").click(function () {
                $('html, body').animate({
                    scrollTop: $(".aboutus").offset().top - 20
                }, 1000);
            });
            $("#click2").click(function () {
                $('html, body').animate({
                    scrollTop: $(".howitworks").offset().top - 56
                }, 1000);
            });
            $("#sidebarclick2").click(function () {
                $('html, body').animate({
                    scrollTop: $(".howitworks").offset().top - 25
                }, 1000);
            });
            $("#click3, #sidebarclick3").click(function () {
                $('html, body').animate({
                    scrollTop: $(".wineofthemonth").offset().top - 117
                }, 1000);
            });
            $("#click4").click(function () {
                $('html, body').animate({
                    scrollTop: $(".faq").offset().top
                }, 1000);
            });
            $("#sidebarclick4").click(function () {
                $('html, body').animate({
                    scrollTop: $(".faq").offset().top - 30
                }, 1000);
            });
            $("#click5").click(function () {
                $('html, body').animate({
                    scrollTop: $(".review").offset().top - 56
                }, 1000);
            });
            $("#sidebarclick5").click(function () {
                $('html, body').animate({
                    scrollTop: $(".review").offset().top - 35
                }, 1000);
            });
        });

        // sidebar
        function openNav() {
            document.getElementById("mySidebar").style.width = "180px";
            document.getElementById("hamburger").style.marginLeft = "180px";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("hamburger").style.marginLeft = "0";
        }
    </script>
</body>

</html>