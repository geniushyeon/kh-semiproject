<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="view/css/Mypage.css" type="text/css">
  <link rel ="stylesheet" href="view/css/mypage_edit.css" type = "text/css" >
</head>
<body>
 <div class="size-controll">

      <div class="user_info">
          <div class="mypage_title">
			
              <h1>마이페이지</h1>
          </div>
          <div class="user_info_form"><img
                  src="https://raw.githubusercontent.com/St4rFi5h/ETC/main/sourcce/article-user-blank.jpg"
                  alt="blank_user">
              이지현(jhlee0912) 님
          </div>
      </div>

       <!--------------전체 버튼묶음-------------->
       <div class="button">
        <ul>
            <a class="card_small" href="index.jsp?inc=view/mypage/Mypage_order.jsp">
                <h3 class="softblack">주문내역</h3>
                <p class="card_text">최근 주문내역을 </br>확인하실 수 있습니다.</p>

            </a>
        </ul>
        
        
              <form action="" method="POST" name="form_edit">
                <ul>
                    <a class="card_small" id="mypage-edit" onclick="gotoEdit()">
                        <h3>회원정보수정</h3>
                        <p class="card_text">나의 정보를 </br>변경하실 수 있습니다.</p>

                    </a>
                </ul>
      		</form>
        
            <ul>
                    <a class="card_small" href="index.jsp?inc=view/mypage/Mypage_qna.jsp">
                        <h3 class="softblack">나의문의</h3>
                        <p class="card_text">나의1:1문의를 </br>확인하실 수 있습니다.</p>
        
                    </a>
                </ul>

    </div>
    
  </div>
</body>
</html>