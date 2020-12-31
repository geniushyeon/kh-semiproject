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
<link rel = "stylesheet" href="view/css/Mypage_edit.css" type = "text/css" >
 <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script>
</head>
<body>
 <!--------------------- 메인시작 --------------------->
  <main id="main_container">
    <div class="size-controll">

      <div class="user_info">
          <div class="mypage_title">

              <h1>마이페이지</h1>
          </div>
          <div class="user_info_form"><img
                  src="https://raw.githubusercontent.com/St4rFi5h/ETC/main/sourcce/article-user-blank.jpg"
                  alt="blank_user">
              이지현(jhlee0912) 님</div>
      </div>

       <!--------------전체 버튼묶음-------------->
       <div class="button">
        <ul>
            <a class="card_small" href="index.jsp?inc=view/mypage/Mypage_order.jsp">
                <h3 class="softblack">주문내역</h3>
                <p class="card_text">최근 주문내역을 </br>확인하실 수 있습니다.</p>

            </a>
        </ul>


        <ul>
            <a class="card_small" href="index.jsp?inc=view/mypage/Mypage_qna.jsp">
                <h3 class="softblack">나의문의</h3>
                <p class="card_text">나의1:1문의를 </br>확인하실 수 있습니다.</p>

            </a>
        </ul>
    </div>
    
  </div>
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
            <div class="user_name">이지현</div>
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">기존 비밀번호</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="colFormLabel" placeholder="기존 비밀번호">
          </div>
        </div>


        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">변경 할 비밀번호</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="colFormLabel" placeholder="특수문자 반드시포함">
          </div>
        </div>
        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">변경 할 비밀번호 확인</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="colFormLabel" placeholder="비밀번호">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">핸드폰번호</label>
          <div class="col-sm-10">
            <input type="number" class="form-control" id="colFormLabel" placeholder="핸드폰번호">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">이메일</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="colFormLabel" placeholder="이메일">
            </br></br>
          </div>
        </div>
        <p>
        <!--------------------- 주소시작 --------------------->
        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">주소</label>
          <div class="col-sm-10">

            <input type="email" class="form-control" id="postcode" placeholder="우편번호">
                    <!--------------------- 우편번호 시작 --------------------->
        <span class="input-group-btn-prepend">
          <button type="button" class="btn btn-outline-secondary" id="postbutton"
            onclick="sample4_execDaumPostcode()">우편번호</button>
        </span>
        
        
          </div>

        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="roadAddress" placeholder="도로명주소">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="jibunAddress" placeholder="지번주소">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="detailAddress" placeholder="상세주소">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="extraAddress" placeholder="참고항목">

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
  <script src="view/js/jquery.min.js"></script>
  <script src="view/js/bootstrap.min.js"></script>
  <script src="view/js/popper.js"></script>

  
</body>
</html>