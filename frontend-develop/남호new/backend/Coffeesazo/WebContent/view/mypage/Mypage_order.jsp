<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>  
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="view/css/bootstrap.min.css">
<link rel="stylesheet" href="view/css/Mypage_order.css" type="text/css">
 <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script>
</head>
<body>
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
            <a class="card_small" href="OrderListSelect">
                <h3 class="softblack">주문내역</h3>
                <p class="card_text">최근 주문내역을 </br>확인하실 수 있습니다.</p>

            </a>
        </ul>
        
        
				<form action="mypage_edit" method="POST" name="form_edit">
                <ul>
                    <a class="card_small" id="mypage-edit" onclick="gotoEdit()">
                        <h3>회원정보수정</h3>
                        <p class="card_text">나의 정보를 </br>변경하실 수 있습니다.</p>

                    </a>
                </ul>
      	</form>
      
                <ul>
                    <a class="card_small" href="MyQnaList">
                        <h3 class="softblack">나의문의</h3>
                        <p class="card_text">나의1:1문의를 </br>확인하실 수 있습니다.</p>
        
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
                            <th>상품이미지</th>
                            <th>상품명</th>
                            <th>가격</th>
                            <th>수량</th>
                            <th>합계</th>
                        </tr>
                    </thead>


                    <!--------------------- 테이블 각항목 --------------------->
                    
                    
                           <tbody>
                      <c:forEach  items="${odList}" var="OrderViewList" >
                    <tr>
                        <td><input id="checkbox" type="checkbox" name="delete-name" value="${OrderViewList.productIndex }"></td>
                        <td>${OrderViewList.productIndex }</td>
                        <td height="0">
                            <div style="height:100%"><img src="${OrderViewList.productImage }" height="100%"></div>
                        </td>
                        <td>${OrderViewList.productName}</td>
                        <td>${OrderViewList.productPrice }원</td>
                        <td>${OrderViewList.orderCount }개</td>
                        <td>${OrderViewList.productPrice * cart.orderCount}원</td>
                    </tr>
                    </c:forEach>
                         
                       
    
					</tbody>
				</form>
				
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
  </form>



    </main>
    <script>
	function gotoEdit() {
		var form = document.form_edit;
		form.action = "mypage_edit";
		form.submit();
	}
    </script>
</body>
</html>