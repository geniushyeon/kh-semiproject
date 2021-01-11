<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 조회 | COFFEESAZO</title>
<!-- 부트스트랩 불러오기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="index copy.css" type="text/css">
<!--favicon-->
<link rel="shortcut icon"
	href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link href="./view/css/qna_check.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<main>
		<div id="container">
			<div id="contents">
				<a href="notice"><h1>고객센터</h1></a>
				<div class="boardnavi">
					<a href="notice" class="navi01"> <span>공지사항</span>
					</a> <a href="qna" class="navi02"> <span>1:1 문의</span>
					</a>
				</div>
				<div class="layout-box">
					<h2>1:1 문의 조회하기</h2>
					<form name="board" method="post" class="board">
						<label for="title">제목</label> <input type="text" id="title"
							name="title" value="${title}" readonly /> <br /> <br /> 
						<label for="content">내용</label> 
						<textarea class="content" rows="13" cols="85" name="content"  readonly>${text}</textarea> <br /> <br />		
						<label for="file">첨부파일<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						${image}</span></label>
						
							<img src="upload/${image}" style="width: 140px; height:100px;"/>

						
						<div class="bottom-button">
						<a href="qna" class="btn-board" >목록으로</a> 
						<a class="btn-modify" href="qnamodify?id=${index}">수정하기</a>
						<a class="btn-cancle" href="qnadelete?id=${index}" onclick="javascript:cancle()">삭제하기</a> 
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	<!-- 부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	<script>
		function cancle() {
	        var writeCancle = confirm("삭제하시겠습니까?");
	        if( writeCancle == true ) {
	            /*  alert("삭제가 완료되었습니다."); 서블릿에서 처리*/
	            location.href = "qnadelete";
	        } 
	    }
		function modify() {
	        var writeCancle = confirm("수정하시겠습니까?");
	        if( writeCancle == true ) {
	            /*  alert("수정이 완료되었습니다."); 서블릿에서 처리*/
	            location.href = "qnamodify";
	        } 
	    }
		function readURL(input) {
			 if (input.files && input.files[0]) {
			  var reader = new FileReader();
			  
			  reader.onload = function (e) {
			   $('#image_section').attr('src', e.target.result);  
			  }
			  
			  reader.readAsDataURL(input.files[0]);
			  }
			}
			 
			$("#imgInput").change(function(){
			   readURL(this);
			});
	</script>
</body>
</html>