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
  <link rel ="stylesheet" href="view/css/Mypage_edit.css" type = "text/css" >
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
                    <a class="card_small" href="index.jsp?inc=view/mypage/Mypage_edit.jsp">
                        <h3>회원정보수정</h3>
                        <p class="card_text">나의 정보를 </br>변경하실 수 있습니다.</p>

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
            <input type="password" class="form-control" id="original_password" placeholder="기존 비밀번호">
          </div>
        </div>


        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">변경할 비밀번호</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="new_password" placeholder="영문, 숫자, 특수문자 포함 최소 8자">
          </div>
        </div>
        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label" id="new_password_check">변경할 비밀번호 확인</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="colFormLabel" placeholder="비밀번호 확인">
          </div>
        </div>

        <div class="row mb-3">
          <label for="colFormLabel" class="col-sm-2 col-form-label">전화번호</label>
          <div class="col-sm-10">
            <input type="phone" class="form-control" id="colFormLabel" placeholder="전화번호 입력">
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
            <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
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
  <script type="text/javascript">
  // 우편번호찾기
  function sample6_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function (data) {
              // 팝업에서 검색결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분

              // 각 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우에는 공백('')을 가지므로, 이를 참고하여 분기한다.
              var address = '';
              var extraAddress = '';

              // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
              if (data.userSelectedType === 'R') {
                  // 사용자가 도로명 주소를 선택했을 경우
                  address = data.roadAddress;
              } else {
                  // 지번 주소를 선택했을 경우
                  address = data.jibunAddress;
              }

              // 사용자가 선택한 주소가 도로명 타입일 때 참고항목을 조합한다.
              if (data.userSelectedType === 'R') {
                  // 법정동명이 있을 경우 추가한다.(법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                      extraAddress += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if (data.buildingName !== '' && data.apartment === 'Y') {
                      extraAddress += (extraAddress !== '' ? ', ' + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if (extraAddress !== '') {
                      extraAddress = ' (' + extraAddress + ')';
                  }
                  // 조합된 참고항목을 해당 필드에 넣는다.
                  document.getElementById("sample6_extraAddress").value = extraAddress;

              } else {
                  document.getElementById("sample6_extraAddress").value = '';
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById("sample6_postcode").value = data.zonecode;
              document.getElementById("sample6_address").value = address;
              // 커서를 상세주소 필드로 이동한다.
              document.getElementById("sample6_detailAddress").focus();
          }
      }).open();
  }
  </script>
  <script src="view/js/jquery.min.js"></script>
  <script src="view/js/bootstrap.min.js"></script>
  <script src="view/js/popper.js"></script>

  
</body>
</html>