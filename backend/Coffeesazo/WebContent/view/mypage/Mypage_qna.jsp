<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Mypage_qna.css" type="text/css">
</head>
<body>
  <main>
        <div class="size-controll">

            <div class="user_info">
                <div class="mypage_title">

                    <h1> 마이페이지 | COFFEESAZO</h1>
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
                        <p class="card_textlink">확인하기</p>
                    </a>
                </ul>
      
                <ul>
                    <a class="card_small" href="index.jsp?inc=view/mypage/Mypage_edit.jsp">
                        <h3>회원정보수정</h3>
                        <p class="card_text">나의 정보를 </br>변경하실 수 있습니다.</p>
                        <p class="card_textlink">수정하기</p>
                    </a>
                </ul>
      

            </div>
      


        <div class="edit_title">
            <h1>나의문의 </h1>
        </div>

        <!---------------------테이블 시작 --------------------->
        <div class="main_table">
            <table class="table table-hover">
                <form action="" method="POST">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>답변상태</th>
                            <th>분류</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>


                        </tr>
                    </thead>


                    <!--------------------- 글 시작 --------------------->
                    <tr class="my-q" onclick="location.href='index.html' ">
   
                        
                        
                        <td>2</td>
                        <td>대기</td>
                        <td>상품질문</td>
                        <td>커피색이 갈색이에요...</td>
                        <td>크쿠루삥뽕</td>
                        <td>2020-12-17</td>

                    </tr>


                    <tr>
                        <td>1</td>
                        <td>답변완료</td>
                        <td>배송질문</td>
                        <td>로켓배송인가요?</td>
                        <td>루밍뽕</td>
                        <td>2020-12-16</td>


                    </tr>


            </table>
            <!--------------------- 글쓰기버튼 --------------------->
            <div class="csl-button">
                <p>
                    <button type="button" class="btn btn-outline-secondary">글쓰기</button>
                </p>
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>


            </div>
    </main>
</body>
</html>