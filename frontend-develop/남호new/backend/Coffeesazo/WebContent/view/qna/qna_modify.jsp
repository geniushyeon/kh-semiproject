<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 수정 | COFFEESAZO</title>
<!-- 부트스트랩 불러오기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="index copy.css" type="text/css">
<!--favicon-->
<link rel="shortcut icon"
	href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link href="./view/css/qna_modify.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<main>
		<div id="container">
			<div id="contents">
				<a href="index.jsp?inc=view/notice/notice.jsp"><h1>고객센터</h1></a>
				<div class="boardnavi">
					<a href="index.jsp?inc=view/notice/notice.jsp" class="navi01"> <span>공지사항</span>
					</a> <a href="index.jsp?inc=view/qna/qna.jsp" class="navi02"> <span>1:1 문의</span>
					</a>
				</div>
				<div class="layout-box">
					<h2>1:1 문의 수정하기</h2>
					<form name="board" method="post" class="board">
						<label for="title">제목</label> <input type="text" id="title"
							name="title" required /> <br /> <br /> 
						<label for="content">내용</label> 
						<textarea class="content" rows="13" cols="85" name="content" required /></textarea> <br /> <br />	
						<label for="file">첨부파일</label>
						<div class="file-upload">
							<input type="file" id="file" name="file" multiple />
						</div>
						<div class="bottom-button">
							<a href="#" class="btn-save" onclick="javascript:registration()">등록하기</a>
							<a href="#" class="btn-modify" onclick="javascript:modify()">수정하기</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	<!-- 부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	<script>
		function registration(){
			var writeRegistration = confirm("등록하시겠습니까?");
			if(writeRegistration) {
				alert("등록이 완료되었습니다.");
				location.href = "index.jsp?inc=view/qna/qna.jsp";
			}
		}	
		function modify() {
	        var writeCancle = confirm("수정하시겠습니까?");
	        if( writeCancle == true ) {
	            alert("수정이 완료되었습니다.");
	            location.href = "index.jsp?inc=view/qna/qna.jsp";
	        } 
	    }
    </script>
</body>
</html>