<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 | COFFEESAZO</title>
<!-- 부트스트랩 불러오기 -->
<link rel="stylesheet" href="./view/css/bootstrap.min.css">
<link rel="stylesheet" href="index copy.css" type="text/css">
<!--favicon-->
<link rel="shortcut icon"
	href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link href="./view/css/notice.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<main>
		<div id="container">
			<div id="contents">
				<a href="index.jsp?inc=view/notice/notice.jsp"><h1>고객센터</h1></a>
				<div class="title-area">
					<div class="boardnavi">
						<a href="index.jsp?inc=view/notice/notice.jsp" class="navi01"> <strong>공지사항</strong>
						</a> <a href="index.jsp?inc=view/qna/qna.jsp" class="navi02"> <span>1:1
								문의</span>
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
							<tr style="background-color: #FFFFFF; color: black;">
								<td>6</td>
								<td class="displaynone"></td>
								<td class="subject"><a
									href="index.jsp?inc=view/notice/notice_detail.jsp"">크리스마스 EVENT</a></td>
								<td>관리자</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>5</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">공지사항</a></td>
								<td>관리자</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>4</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">공지공지</a></td>
								<td>관리자</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>3</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">공지지지</a></td>
								<td>관리자</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td>2</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">공 지</a></td>
								<td>관리자</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
						<tbody class="index-box">
							<tr style="background-color: #FFFFFF; color: black;">
								<td class="bottom">1</td>
								<td class="displaynone"></td>
								<td class="subject"><a href="#">공지쓰</a></td>
								<td>관리자</td>
								<td class="txtLess ">2020-12-16</td>
							</tr>
						</tbody>
					</table>
				</div>
					<div class='btns'>
					<input type='button' value='Prev' />

					<c:forEach var='i' begin='1' end='5'>
						<input type='button' value='${i }' onclick='goPage(${i})' />
					</c:forEach>

					<input type='button' value='Next' /> 
				</div>
			</div>
		</div>
	</main>
	<!-- 부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>

</body>
</html>