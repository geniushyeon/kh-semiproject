<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="view/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="view/css/header.css">
</head>
<body>
<header class="header">
<!-- header 시작 -->
<%
	if(session.getAttribute("id") == null) {
		
%>
        <div class="header-align">
            <div class="header-logo">
                <a href="index.jsp"><img src="view/img/logo_white.png" class="logo"></a>
            </div>
            <div class="btns-signin-signup">
                <span><a href="index.jsp?inc=view/signin/login.jsp">로그인</a></span>
                <span><a href="index.jsp?inc=view/signup/signup.jsp">회원가입</a></span>
                <span><a href="index.jsp?inc=view/notice/notice.jsp">고객센터</a></span>
                <span><a href="index.jsp?inc=view/order/shopping_cart.jsp"><img src="view/img/shoppingcart_white.png" id="shoppingcart"></a></span>
                <span><a href="index.jsp?inc=view/mypage/Mypage_edit.jsp">마이페이지</a></span>
            </div>
        </div>

        <div class="shopping">
            <span id="wholebean"><a href="index.jsp?inc=view/shopping/product/whole_bean.jsp">원두</a></span>
            <span id="stickcoffee"><a href="index.jsp?inc=view/shopping/product/stick_coffee.jsp">스틱커피</a></span>
            <span id="capsulecoffee"><a href="index.jsp?inc=view/shopping/product/capsule_coffee.jsp">캡슐커피</a></span>

        </div>
    
    <% } else { %>
    <div class="header-align">
            <div class="header-logo">
                <a href="index.jsp"><img src="view/img/logo_white.png" class="logo"></a>
            </div>
            <div class="btns-signin-signup">
                <span><a href="index.jsp">로그아웃</a></span>
                <span><a href="index.jsp?inc=view/mypage/Mypage_order.jsp">마이페이지</a></span>
                <span><a href="index.jsp?inc=view/notice/notice.jsp">고객센터</a></span>
                <span><a href="index.jsp?inc=view/order/shopping_cart.jsp"><img src="view/img/shoppingcart_white.png" id="shoppingcart"></a></span>
            </div>
        </div>

        <div class="shopping">
            <span id="wholebean"><a href="index.jsp?inc=view/shopping/product/whole_bean.jsp">원두</a></span>
            <span id="stickcoffee"><a href="index.jsp?inc=view/shopping/product/stick_coffee.jsp">스틱커피</a></span>
            <span id="capsulecoffee"><a href="index.jsp?inc=view/shopping/product/capsule_coffee.jsp">캡슐커피</a></span>

        </div>
    <%} %>
</header>
</body>
</html>