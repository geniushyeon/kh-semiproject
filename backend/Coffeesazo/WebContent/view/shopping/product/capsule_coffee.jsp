<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>캡슐커피 | COFFEESAZO</title>
    <!-- 부트스트랩 불러오기 -->
    <link rel=“stylesheet” href=“view/css/bootstrap.min.css” type=“text/css”>
    <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
    <link rel="stylesheet" href="view/css/capsule_coffee.css" type="text/css">
  
</head>

<body>



    <!-- 상품페이지 메인 -->

    <main>
        <p><h1 class="sub_title">캡슐커피</h1></p>

        <div class="bean_product_list"> 
            <div class="inner_space">
                 <h3 class="tag_title"> # 룽고</h3>
                 <div class="sub_under_dec"></div><!--해시태그 밑의 바-->
                 <div class="row_space"><!--위치고정 큰 틀-->
                     <div class="col_space"> 
                      <div class="item_list">
                           <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Capsule1.jsp">
                             <img src="view/img/Fortissio_Lungo.png" alt="">
                             <div class="capsule_name"> '포시티오 룽고' </div> 
                            <p><div class="product_price">10,000원</div></p>
                           </a>
                      </div>
                     </div>

                     <div class="col_space"> 
                      <div class="item_list">
                        <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Capsule2.jsp">
                            <img src="view/img/Volluto.png" alt="">
                            <div class="capsule_name"> '비발토 룽고'</div> 
                            <p><div class="product_price">10,000원</div></p>
                        </a>
                      </div>
                     </div>

                     <div class="col_space"> 
                      <div class="item_list">
                        <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Capsule2.jsp">
                            <img src="view/img/Linizio_Lungo.png" alt="">
                            <div class="capsule_name"> '리니지오 룽고'</div> 
                            <p><div class="product_price">10,000원</div></p>
                        </a>
                      </div>
                     </div>

                 </div>
            </div>
        </div>   
    </main>



<%--
    <!-- 제이쿼리 자바스크립트 추가 -->
    <script src="./js/jquery.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가 -->
    <script src="./js/bootstrap.min.js"></script>
    <!-- 파퍼 자바스크립트 추가 -->
    <script src="./js/popper.min.js"></script>
     --%>
    
</body>
</html>