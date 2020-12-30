<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기 | COFFEESAZO</title>
    <link rel=“stylesheet” href=“./view/css/bootstrap.min.css” type=“text/css”> 
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link href="./view/css/find_password_1step.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./view/css/header.css" type="text/css">
    <link rel="stylesheet" href="./view/css/footer.css" type="text/css">
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
    
    <!-- findPassword start! -->
    <div class="main-body"> <!-- 전체 div시작 -->
        <form method="post" action="#"> <!-- form 태그 시작-->
            <p class="main-title">비밀번호 재설정</p>
            <p>　</p>
            <p>
                <input class="input" type="text" name="id" 
                pattern="^([a-z0-9_]){6,50}$" 
                placeholder="아이디를 입력해 주세요"> <!-- 아이디 입력 인풋 -->
            </p>

            <p>
                <input class="input" type="email" name="email" 
                    placeholder="이메일을 입력해 주세요"> <!-- 비번 입력 인풋 -->
            </p>
            <p>　</p>
            <p>
                <input class="findpassword-button" type="button" value="이메일로 인증번호 받기"
                onclick="location.href='#'"> <!--타입 :submit -> button으로 하고 임시로 링크해놨음-->
            </p>
            
            <p class="title">
                <a href="find_id_1step"> 아이디를 잊으셨나요?</a>
            </p>
        </form> <!-- form 태그 시작-->
    </div> <!-- 전체 div 끝 -->
    <!-- findPassword end! -->
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

</html>