<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COFFEESAZO</title>
    <link rel="stylesheet" href="view/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/css/index.css" type="text/css">
    <!--favicon-->
    <link rel="shortcut icon"
        href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
</head>

<!-- 로그인 전 기본 Index -->
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	// inc
	String inc = "index_main.jsp";
	if(request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
		
	}

	
	%>
    <!-- header 시작 -->
    <!-- 정적 include -->
    <%@ include file="header.jsp" %>

    <!-- main 컨텐츠 시작 -->
	<div class="section">
		<jsp:include page="<%=inc %>"/>
	</div>
	 <!-- 정적 include -->
   	<%@ include file="footer.jsp" %>
   	
</body>

</html>