<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기 | COFFEESAZO</title>
    <link rel=“stylesheet” href=“./view/css/bootstrap.min.css” type=“text/css”> 
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link href="./view/css/find_id_2step.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./view/css/header.css" type="text/css">
    <link rel="stylesheet" href="./view/css/footer.css" type="text/css">
</head>

<body>
    
    <div class="main-body"> <!--전체 div 시작-->
    <form method="post" action="#"> <!--form 태그 시작-->

        <p class="main-title">아이디 찾기</p>
        <p>　</p>
        <p class="sub-title">이메일로 전송된 인증번호를<br>바르게 입력해 주세요</p>
        <p>　</p>
        <p>
            <input class="input" type="text" name="aut_number" 
               placeholder="인증번호를 입력해 주세요"> <!--인증번호 입력 인풋-->
                <!--
                    1. 인증번호 일치 시 : findId2-finish.html 로 이동
                    2. 불일치 시 : alert "인증번호가 일치하지 않습니다."
                -->
        </p>
        <p>　</p>
        <p>
            <input class="findid-button" type="button" value="인증번호 확인"
            onclick="location.href='#'"> <!--타입 :submit -> button으로 하고 임시로 링크해놨음-->
        </p>

    </form> <!--form 태그 끝-->
    </div> <!--전체 div 끝-->

</body>

</html>