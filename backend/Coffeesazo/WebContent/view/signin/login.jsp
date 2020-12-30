<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 | COFFEESAZO</title>
    <link herf="./view/css/bootstrap.min.css" type="text/css" rel="stylesheet">

    
    <link rel="stylesheet" href="../view/css/header.css" type="text/css">
    <link rel="stylesheet" href="../view/css/footer.css" type="text/css">
    <link href="./view/css/login.css" rel="stylesheet" type="text/css" />

</head>

<body>
    <!-- header 시작 -->
    <header class="header">
        <div class="header-align">
            <div class="header-logo">
                <a href="#"><img src="./view/img/logo_white.png" class="logo"></a>
            </div>
            <div class="btns-signin-signup">
                <span><a href="#">로그인</a></span>
                <span><a href="#">회원가입</a></span>
                <span><a href="#">고객센터</a></span>
                <span><a href="#"><img src="./view/img/shoppingcart_white.png" id="shoppingcart"></a></span>
            </div>
        </div>
        <div class="shopping">
            <span id="wholebean"><a href="#">원두</a></span>
            <!-- onmouseover 써볼지? (javascript)-->
            <span id="stickcoffee"><a href="#">스틱커피</a></span>
            <span id="capsulecoffee"><a href="#">캡슐커피</a></span>
        </div>
    </header>

    <!-- login start -->
    <div class="main-body"> <!--전체div-->
    	 <!--form태그 시작-->
        <form method="post" action="Login" onsubmit= "return checks()">
            <h1 class="main-title">L O G I N</h1>

            <p>
                <input class="input" type="text" name="id" id="id"
            	 placeholder="아이디를 입력해 주세요">
            </p>
            
            <p>
                <input class="input" type="password" name="pwd" id="pwd"
            	placeholder="비밀번호를 입력해 주세요">
            </p>

            <p class="title">
                <a href="find_id_1step.jsp">아이디 찾기 |</a> <!--findId2페이지로 이동-->
                <a href="find_password_1step.jsp">비밀번호 재설정</a> <!--findPassword페이지로 이동-->
            </p>

            <p>
                <input class="login-button" type="submit" value="로그인"> <!--로그인성공페이지로이동-->
            </p> 
        </form> <!--form태그 끝-->

        <p class="title">──────────────────────</p>
        <h2 class="title">아직 회원이 아니신가요?</h2>

        <p>
            <input class="signup-button" type="button" value="회원가입"
            onclick="location.href='./view/signup/signup.jsp'"> <!--회원가입페이지로이동-->
        </p>

    </div>
    
    <!-- login end -->
    <footer>
        <div class="footer">
            <ul class="footer-list-box">
                <li>COFFEESAZO | 대표자: 이지현 | 사업자등록번호 123-45-67890</li>
                <li>서울특별시 영등포구 선유도2로 57 이레빌딩(구관) 19F</li>
                <li>책임자: 제윤지 | 개인정보관리책임자: 김은규</li>
                <li>고객센터 02-1234-5678 | E-mail: customer@coffeesazo.com</li>
            </ul>
        </div>
    </footer>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="./view/js/signin.js" charset="utf-8"></script>
</html>