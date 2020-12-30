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
    <link href="./view/css/find_id_success.css" rel="stylesheet" type="text/css" />
   <link rel="stylesheet" href="./view/css/header.css" type="text/css">
    <link rel="stylesheet" href="./view/css/footer.css" type="text/css">
</head>

<body>
   
   
    <div class="main-body"> <!--전체 div 시작-->
        <form> 
            <div class="wrapper">
                <p class="main-title">아이디 찾기</p>
                <p>　</p>
            
                <p class="sub-title">회원님의 아이디는<br>' <span id='id'>#</span> ' 입니다.</p>
                <!--span태그 사이에 디비에서 가져온 아이디 보일 수 있게 -->
                <p>　</p>
                <p>
                    <input class="findid-button" type="button"  value="로그인 하러 가기"
                    onclick="location.href='login.jsp'">
                </p> <!--로그인 (login2) 페이지로 이동-->
                <p class="title">
                    <a href="find_password_1step"> 비밀번호를 잊으셨나요?</a>
                </p>
            </div>
        </form>
    </div> <!--전체 div 끝-->

  
</body>

</html>