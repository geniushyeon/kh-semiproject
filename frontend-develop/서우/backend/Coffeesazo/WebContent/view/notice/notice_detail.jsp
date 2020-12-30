<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 조회 | COFFEESAZO</title>
<!-- 부트스트랩 불러오기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="index copy.css" type="text/css">
<!--favicon-->
<link rel="shortcut icon"
	href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link href="./view/css/notice_detail.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<main>
		<div id="container">
			<div id="contents">
				<h1>고객센터</h1>
				<div class="title-area">
					<div class="boardnavi">
						<a href="index.jsp?inc=view/notice/notice.jsp" class="navi01"> <span>공지사항</span>
						</a> <a href="index.jsp?inc=view/qna/qna.jsp" class="navi02"> <span>1:1 문의</span>
						</a>
					</div>
				</div>
				<div class="base-table">
					<table border="1" summary>
						<caption>게시판 목록</caption>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td>크리스마스 EVENT</td>
							</tr>
							<tr>
								<th scope="row">작성자</th>
								<td>관리자</td>
							</tr>
							<tr>
								<th scope="row">작성일</th>
								<td>2020-12-16</td>
							</tr>
						</tbody>
					</table>
				</div>
				<tr class="view">
					<div class="detail">
						<div class="view-article">
							<p></p>
							<p style="text-align: center;">
								<img src="./view/img/view-img.jpg"
									style="width: 550px; height: 500px;">
							</p>
						</div>
					</div>
				</tr>
				<div class="bottom-table">
					<ul>
						<li class="prev"><strong>이전글</strong> <a href="#">공지사항
								어쩌꼬 저쩌꼬</a></li>
						<li class="next"><strong>다음글</strong> <a href="#">공지사항
								어쩌꼬 저쩌꼬</a></li>
					</ul>
				</div>
				<div class="list-button">
					<a href="index.jsp?inc=view/notice/notice.jsp" class="btn-board">목록</a>
				</div>
			</div>
		</div>
	</main>
	<!-- 부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>

</body>
</html>