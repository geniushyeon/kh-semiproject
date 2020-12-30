<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 작성 | COFFEESAZO</title>
<!-- 부트스트랩 불러오기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="index copy.css" type="text/css">
<!--favicon-->
<link rel="shortcut icon"
	href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link href="./view/css/qna_write.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<main>
		<div id="container">
			<div id="contents">
				<h1>고객센터</h1>
				<div class="boardnavi">
					<a href="index.jsp?inc=view/notice/notice.jsp" class="navi01"> <span>공지사항</span>
					</a> <a href="index.jsp?inc=view/qna/qna.jsp" class="navi02"> <span>1:1 문의</span>
					</a>
				</div>
				<div class="layout-box">
					<h2>1:1 문의 작성하기</h2>
					<form name="board" method="post" class="board">
						<label for="title">제목</label> <input type="text" id="title"
							name="title" placeholder="내용을 입력해 주세요." required /> <br /> <br />
						<label for="content">내용</label> <input type="text" id="content"
							name="content" placeholder="내용을 입력해 주세요." required /> <br /> <br />
						<label for="file">첨부파일</label>
						<div class="file-upload">
							<input type="file" id="file" name="file" multiple />
						</div>
						<div class="bottom-button">
							<a href="index.jsp?inc=view/qna/qna.jsp" class="btn-save" onclick="javascript:btn_save()">등록하기</a>
							<a href="index.jsp?inc=view/qna/qna_write.jsp" class="btn-cancle" onclick="javascript:btn_cancle()">취소하기</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	  <!-- 부트스트랩 자바스크립트 추가 -->
    <script src="./js/bootstrap.min.js"></script>
	<script>
		function btn_save() {
			alert("등록이 완료되었습니다.");
			window.location.href = "index.jsp?inc=view/qna/qna.jsp";
		}
		function btn_cancle() {
			alert("취소하시겠습니까?");
			window.location.href = "index.jsp?inc=view/qna/qna_write.jsp";
		}
	</script>

</body>
</html>