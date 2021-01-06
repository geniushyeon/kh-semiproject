<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 | COFFEESAZO</title>
<!-- 부트스트랩 불러오기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="index copy.css" type="text/css">
<!--favicon-->
<link rel="shortcut icon"
	href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="view/css/qna.css" type="text/css">
</head>
<body>
	<main>
		<div id="container">
			<div id="contents">
				<a href="index.jsp?inc=view/notice/notice.jsp"><h1>고객센터</h1></a>
				<div class="title-area">
					<div class="boardnavi">
						<a href="index.jsp?inc=view/notice/notice.jsp" class="navi01">
							<span>공지사항</span>
						</a> <a href="index.jsp?inc=view/qna/qna.jsp" class="navi02"> <strong>1:1
								문의</strong>
						</a>
					</div>
				</div>
				<div class="base-table">
					<table border="1" summary>
						<caption>게시판 목록</caption>
						<thead class="element-box">
							<tr>
								<th scope="col">순번</th>
								<th scope="col" class="displaynone">카테고리</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col" class>작성일</th>
							</tr>
						</thead>
						
						<tbody class="index-box">
							<c:forEach items="${qnaList }" var="qnavo">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>${qnavo.qnaIndex }</td>
								<td class="displaynone"></td>
								<td class="subject"><a
									href="#" onclick="javascript:registration_button()">${qnavo.qnaTitle }</a></td>
								<td><input type="text" id="test" value="${qnavo.fkMemberId }"/>${qnavo.fkMemberId }</td>
								<td class="txtLess ">${qnavo.qnaDate }</td>
							</tr>
							</c:forEach>
						</tbody>
						
			 			<!-- <tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>5</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">문의문의</a></td>
								<td>이지현</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>4</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">문의문의문의</a></td>
								<td>박서우</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>3</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">문의문의</a></td>
								<td>이민영</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>2</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">문의</a></td>
								<td>제윤지</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td class="bottom">1</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">무니</a></td>
								<td>제윤지</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody> -->
					</table> 
				</div> 
				<div class='btns'>
					<input type='button' value='Prev' />

					<c:forEach var='i' begin='1' end='5'>
						<input type='button' value='${i }' onclick='goPage(${i})' />
					</c:forEach>

					<input type='button' value='Next' /> 
					<div class="bottom-button">
						<a href="#" class="bottom-button" onclick="javascript:bottom_button();">등록하기</a>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- 부트스트랩 자바스크립트 추가 -->
    <script src="./js/bootstrap.min.js"></script>
	<script>
	function bottom_button() {
		var id = '<%=(String)session.getAttribute("id")%>';
		
		if(id == "null") {
			alert("로그인이 필요한 항목입니다."); 
			location.href = "index.jsp?inc=view/signin/login.jsp";
		} else {
			location.href = "index.jsp?inc=view/qna/qna_write.jsp";
		}
	}
	
	function registration_button() {
		var id = '<%=(String)session.getAttribute("id")%>';
		var idvalue = document.getElementById("test").value;
		
		console.log(id);
		console.log(idvalue);
		
		if(id != idvalue){
			alert("접근 권한이 없습니다....");
		}
	}
	</script>
</body>
</html>