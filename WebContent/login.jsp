<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/common.css">
    <script src="main.js"></script>
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <style>
        body {
            color: #101011;
            background-color: rgba(187, 124, 178, .2);
            font-family: 'NanumSquare', sans-serif;
        }

        *,
        :after,
        :before {
            box-sizing: border-box;
        }

        .inner {
            width: 1280px;
            margin: 0 auto;
        }

        .header {
            width: 100%;
            top: 0;
            position: fixed;
            background-color: none;
            z-index: 999999999;
            margin: 0 auto;
        }

        .header .inner {
            position: relative;
        }

        .header button {
            font-size: 17px;
            letter-spacing: -0.03em;
            color: #171717;
            font-family: 'NanumSquare', sans-serif !important;
        }

        header .logo {
            position: absolute;
            width: 200px;
            margin-top: 14px;
            left: 50%;
            transform: translateX(-50%);
        }

        header .logo img {
            width: 100%;
        }

        header .left li,
        header .right li {
            margin: 25px 0;
            padding-right: 25px;
        }

        header .left li {
            float: left;
        }

        header .right {
            float: right;
        }

        header .right li {
            float: left;
        }

        header .right li:last-child {
            padding-right: 0;
        }

        .sidebarWrap {
            display: none;
        }

        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            right: 0;
            background-color: #f4e4da;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 70px;
        }

        .sidebar a {
            padding: 8px 8px 15px 20px;
            font-size: 17px;
            color: #818181;
            display: block;
            transition: 0.3s;
            font-weight: 700;
        }

        .sidebar a:hover {
            color: #891e7a;
            font-weight: 1000;
        }

        .sidebar .closebtn {
            position: absolute;
            top: 5px;
            right: 10px;
            font-size: 35px;
        }

        .login-wrap {
            font: 400 16px/18px;
            width: 100%;
            margin: 0 auto;
            max-width: 525px;
            min-height: 670px;
            position: absolute;
            top: 53%;
            left: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
        }

        .login-html {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 90px 70px 50px 70px;
            background: rgba(187, 124, 178, .7);
        }

        .login-html .sign-in-htm,
        .login-html .sign-up-htm {
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            transform: rotateY(180deg);
            backface-visibility: hidden;
            transition: all .4s linear;
        }

        .login-html .sign-in,
        .login-html .sign-up,
        .login-form .group .check {
            display: none;
        }

        .login-html .tab {
            font-size: 22px;
            margin-right: 15px;
            padding-bottom: 5px;
            margin: 0 15px 20px 0;
            display: inline-block;
            border-bottom: 2px solid transparent;
        }

        .login-html .sign-in:checked+.tab,
        .login-html .sign-up:checked+.tab {
            color: #fff;
            border-color: #891e7a;
        }

        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

        .login-form .group {
            margin-bottom: 15px;
        }

        .login-form .group .label,
        .login-form .group .input,
        .login-form .group .button {
            width: 100%;
            display: block;
        }

        .login-form .group .label,
        .login-form .group .input {
            color: #191919;
        }

        .login-form .group .button {
            color: #fff;
        }

        .login-form .group .input:focus {
            outline: none;
        }

        .login-form .group .input,
        .login-form .group .button {
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, .3);
        }

        .login-form .group input[data-type="password"] {
            text-security: circle;
            -webkit-text-security: circle;
        }

        .login-form .group .label {
            color: #fff;
            font-size: 13px;
            padding-bottom: 4px;
        }

        .login-form .group .button {
            background: #891e7a;
        }

        .login-form .group label .icon {
            width: 15px;
            height: 15px;
            border-radius: 2px;
            position: relative;
            display: inline-block;
            background: rgba(255, 255, 255, .1);
        }

        .login-form .group label .icon:before,
        .login-form .group label .icon:after {
            content: '';
            width: 10px;
            height: 2px;
            background: #fff;
            position: absolute;
            transition: all .2s ease-in-out 0s;
        }

        .login-form .group label .icon:before {
            left: 3px;
            width: 5px;
            bottom: 6px;
            transform: scale(0) rotate(0);
        }

        .login-form .group label .icon:after {
            top: 6px;
            right: 0;
            transform: scale(0) rotate(0);
        }

        .login-form .group .check:checked+label {
            color: #fff;
        }

        .login-form .group .check:checked+label .icon {
            background: #891e7a;
        }

        .login-form .group .check:checked+label .icon:before {
            transform: scale(1) rotate(45deg);
        }

        .login-form .group .check:checked+label .icon:after {
            transform: scale(1) rotate(-45deg);
        }

        .login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm {
            transform: rotate(0);
        }

        .login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
            transform: rotate(0);
        }

        .hr {
            height: 2px;
            margin: 40px 0 20px 0;
            background: rgba(255, 255, 255, .2);
        }

        .foot-lnk {
            text-align: center;
        }

        @media(max-width:480px) {
            .inner {
                width: 100%;
                margin: 0 auto;
            }

            /* header */
            .header {
                width: 100vw;
                height: 50px;
                top: 0;
                position: fixed;
                background-color: #fff;
                z-index: 999999999;
            }

            .header button {
                font-size: 10px;
                letter-spacing: -0.03em;
            }

            header .logo {
                width: 130px;
                margin: 10px 0;
                padding: 0;
            }

            header .left li,
            header .right li {
                display: none;
            }

            .sidebarWrap {
                display: block;
            }

            header .inner .openbtn {
                position: absolute;
                right: 0;
                font-size: 33px;
                cursor: pointer;
                line-height: 50px;
                padding: 0 15px;
                border: none;
            }
        }
    </style>
</head>

<body>
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
                <li><button></button><a href="login.html">LOG IN</a></button></li>
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
                    <a>LOG IN</a>
                </div>
            </div>
        </div>
    </header>
    <div class="login-wrap">
        <form class="login-html" action="loginaction.jsp" method="post">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked>
            <label for="tab-1" class="tab">로그인</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up">
            <label for="tab-2" class="tab">회원가입</label>
            <div class="login-form">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">아이디</label>
                        <input id="user" type="text" class="input" name="userId">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">비밀번호</label>
                        <input id="pass" type="password" class="input" data-type="password" name="userPass">
                    </div>
                    <div class="group">
                        <input type="submit" name="cmd" class="button" value="로그인">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#forgot">비밀번호 찾기</a>
                    </div>
                </div>
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="user" class="label">아이디</label>
                        <input id="user" type="text" class="input" name="signId">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">비밀번호</label>
                        <input id="pass" type="password" class="input" data-type="password" name="signPass">
                    </div>
                    <div class="group">
                        <label for="user" class="label">이름</label>
                        <input id="user" type="text" class="input" name="userName">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">이메일</label>
                        <input id="pass" type="email" class="input" name="userEmail">
                    </div>
                    <div class="group">
                        <input type="submit" name="cmd" class="button" value="회원가입">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <label for="tab-1">이미 회원입니다</a>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <script>
        // sidebar
        function openNav() {
            document.getEleementById("hamburger").style.marginLeft = "180px";
        }mentById("mySidebar").style.width = "180px";
            document.getEl

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("hamburger").style.marginLeft = "0";
        }
    </script>
</body>

</html>