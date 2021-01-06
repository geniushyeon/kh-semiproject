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
		<input type='hidden' name='noticeIndex' />
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
				<form method="POST" name="form1" id="form1" >
					<table border="1" summary>
						<caption>게시판 목록</caption>
						<thead class="element-box">
							<tr>
								<th scope="col">순번</th>
								<th scope="col" class="displaynone">카테고리</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>
						<tbody class="index-box">
							<c:forEach items="${noticeList}" var="noticevo">
							<tr style="background-color: #FFFFFF; color: black;">
							<input type="text" name="noticeIndex" value="${noticevo.noticeIndex }"/>
								<td>${noticevo.noticeIndex }</td>
								
								<td class="displaynone"></td>
								<!--<td class="subject"><a href="noticedetail">${noticevo.noticeTitle }</a></td>-->
								<td class="subject"  onclick="view(${noticevo.noticeIndex});">${noticevo.noticeTitle }</td>
								<td>관리자</td>
								<td class="txtLess ">${noticevo.noticeDate }</td>
							</tr>
							</c:forEach>
						
						</tbody>

					</table>
				</form>
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
	<script>
      function view(noticeIndex){
         var frm = document.form1;
         console.log(noticeIndex);
         frm.action="noticedetail";
         frm.noticeIndex.value = noticeIndex;
         frm.submit();
      }
   </script>
</body>
</html>