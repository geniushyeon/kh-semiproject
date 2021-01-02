<%@page import="com.coffeesazo.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="view/css/bootstrap.min.css">
  <link rel="stylesheet" href="view/css/addressApi.css" type="text/css">
  <link rel="stylesheet" href="view/css/Mypage.css" type="text/css">
  <link rel ="stylesheet" href="view/css/mypage_edit.css" type = "text/css" >
  <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script>
</head>
<body>

 <!--------------------- 메인시작 --------------------->
  <main id="main_container">
   <%@include file="mypage_header.jsp" %>
    <div class="form_move">
      <div class="edit_title">
        <h1>회원정보수정</h1>
      </div>


      <div class="form-group">

        <p>
          <!--------------------- 회원정보 변경 --------------------->
        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
          <div class="col-sm-10">
            <div class="user_name">${memberVo.memberName }</div>
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">기존 비밀번호 입력</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="original-password" placeholder="기존 비밀번호">
          </div>
        </div>


        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">변경할 비밀번호</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="input-new-password" placeholder="영문, 숫자, 특수문자 포함 최소 8자">
          	<span class="warn-info" id="new-password-required">형식에 맞게 입력해주세요.</span>
          	
          </div>
        </div>
        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">변경할 비밀번호 확인</label>
          <div class="col-sm-10">
            <input type="password" class="form-control"  id="input-new-password-check" placeholder="비밀번호 확인">
          	<span class="warn-info" id="new-password-check-required">형식에 맞게 입력해주세요.</span>
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">전화번호</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="input-phonenumber" placeholder="전화번호 입력">
          	<span class="warn-info" id="phonenumber-required">형식에 맞게 입력해주세요.</span>
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">이메일</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="input-email" placeholder="이메일 형식에 맞게 입력">
            <span class="warn-info" id="email-required">형식에 맞게 입력해주세요.</span>
            </br></br>
          </div>
        </div>
        <p>
        <!--------------------- 주소시작 --------------------->
        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">주소</label>
          <div class="col-sm-10">

            <input type="text" class="form-control" id="sample6_postcode" readonly placeholder="우편번호">
                    <!--------------------- 우편번호 시작 --------------------->
        <span class="input-group-btn-prepend">
          <button type="button" class="btn btn-outline-secondary" id="sample6_postcode_search"
            onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
        </span>
        
        
          </div>

        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="sample6_address" readonly placeholder="주소">
          </div>
        </div>


        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="sample6_detailAddress" readonly placeholder="상세주소">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">

          </div>
        </div>


          <button type="button" class="btn btn-outline-secondary">취소하기</button>
          <!-- 확인창 나오는버튼 -->
          <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
            변경하기
          </button>

          <!-- 확인창 내부 -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">변경확인</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                정말로 변경하겠습니까?
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">취소</button>
                <button type="button" class="btn btn-outline-success">저장하기</button>
              </div>
            </div>
          </div>
        
        </div>
        </p>


      </div>
    </div>



  </main>

  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="view/js/addressApi.js"></script>
<script src="view/js/mypage_edit.js"></script>
<script type="text/javascript">
function gotoEdit() {
	var form = document.form_edit;
	form.action = "mypage_edit";
	form.submit();
}

</script>
  <script src="view/js/jquery.min.js"></script>
  <script src="view/js/bootstrap.min.js"></script>
  <script src="view/js/popper.js"></script>

  
</body>
</html>