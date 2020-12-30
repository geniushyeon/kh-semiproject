<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <main id="main_container">
        <div class="size-controll">

            <div class="user_info">
                <div class="mypage_title">

                    <h1> 마이페이지</h1>
                </div>
                <div class="user_info_form"><img
                        src="https://raw.githubusercontent.com/St4rFi5h/ETC/main/sourcce/article-user-blank.jpg"
                        alt="blank_user">
                    이지현(jhlee0912) 님</div>
            </div>

            <!--------------전체 버튼묶음-------------->
            <div class="button">
                <ul>
                    <a class="card_small" href="/frontend-develop/Frontend-최종-1차/백종웅/Front/Mypage_order.html">
                        <h3 class="softblack">주문내역</h3>
                        <p class="card_text">최근 주문내역을 </br>확인하실 수 있습니다.</p>
                        <p class="card_textlink">확인하기</p>
                    </a>
                </ul>
      
                <ul>
                    <a class="card_small" href="/frontend-develop/Frontend-최종-1차/백종웅/Front/Mypage_edit.html">
                        <h3>회원정보수정</h3>
                        <p class="card_text">나의 정보를 </br>변경하실 수 있습니다.</p>
                        <p class="card_textlink">수정하기</p>
                    </a>
                </ul>
      
                <ul>
                    <a class="card_small" href="/frontend-develop/Frontend-최종-1차/백종웅/Front/Mypage_qna.html">
                        <h3 class="softblack">나의문의</h3>
                        <p class="card_text">나의1:1문의를 </br>확인하실 수 있습니다.</p>
                        <p class="card_textlink">확인하기</p>
                    </a>
                </ul>
            </div>
      

        </div>
        <div class="edit_title">
            <h1>주문내역</h1>
        </div>

        <!---------------------테이블시작 --------------------->
        <div class="main_table">
            <table class="table table-hover">
                <form action="" method="POST">
                    <thead>
                        <tr>
                            <th>선택</th>
                            <th>주문번호</th>
                            <th>상품번호</th>
                            <th>상품이미지</th>
                            <th>상품명</th>
                            <th>가격</th>
                            <th>수량</th>
                            <th>합계</th>
                        </tr>
                    </thead>


                    <!--------------------- 테이블 각항목 --------------------->
                    <tr>
                        <tr class="my-order" onclick="location.href='Project/kh-semiproject/frontend-develop/지현/order_detail.html' ">
                        <td><input id="checkbox" type="checkbox"></td>
                        <td>20201217</td>
                        <td>35435</td>
                        <td height="0">
                            <img src="..." alt="..." class="img-thumbnail">
                        </td>
                        <td>커피1</td>
                        <td>7000원</td>
                        <td>2개</td>
                        <td>14000원</td>
                    </tr>

                    <tr>
                        <td><input id="checkbox" type="checkbox"></td>
                        <td>20201217</td>
                        <td>633456</td>
                        <td height="0">
                            <img src="..." alt="..." class="img-thumbnail">
                        </td>
                        <td>원두</td>
                        <td>22000원</td>
                        <td>2개</td>
                        <td>44000원</td>
                    </tr>


                

                        <td><input id="checkbox" type="checkbox"></td>
                        <td>20201217</td>
                        <td>633456</td>
                        <td height="0">
                            <img src="..." alt="..." class="img-thumbnail">
                        </td>
                        <td>원두</td>
                        <td>22000원</td>
                        <td>2개</td>
                        <td>44000원</td>
                    </tr>


                    <tr>
                        <td><input id="checkbox" type="checkbox"></td>
                        <td>20201217</td>
                        <td>633456</td>
                        <td height="0">
                            <img src="..." alt="..." class="img-thumbnail">
                        </td>
                        <td>원두</td>
                        <td>22000원</td>
                        <td>2개</td>
                        <td>44000원</td>
                    </tr>


            </table>
            <!--------------------- 주문취소 버튼 --------------------->
            <div class="csl-button">
                <p>
                    <button type="button" class="btn btn-outline-secondary">주문취소</button>
                </p>
            </div>

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