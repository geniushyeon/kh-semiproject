<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>원두 | COFFEESAZO</title>
    <!-- 부트스트랩 불러오기 -->
    <link rel=“stylesheet” href=“view/css/bootstrap.min.css” type=“text/css”>
    <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
    <link rel="stylesheet" href="view/css/whole_bean.css" type="text/css">
   
</head>

<body>
  

    <!-- 상품페이지 메인 -->

    <main>
            
     <p><h1 class="sub_title">원두</h1></p><!--상품타이틀-->
                                 
 
    <div class="bean_product_list">  <!--풍부한 산미 리스트-->
      
       <a name="tag_latin"="${product.fkHashtagIndex}" var="product" begin="2"></a> 
       
        <div class="inner_space">
        
        
            <h3 class="tag_title">#풍부한산미</h3>
            <div class="sub_under_dec"></div>
            <div class="row_space">
   			<c:forEach items="${beanList}" var="product" begin="0" end="2" >
                <div class="col_space"> 
                   <div class="item_list">
                       <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans4.jsp">
                           <img src="view/img/${product.productImage}" alt="">
                           <div class="bean_name"> '${product.productName}'</div> 
                           <p><div class="product_price">${product.productPrice}원</div></p>
                       </a>
                   </div>
                </div>
                </c:forEach>
           </div>
       </div>
   </div>
   
    <div class="bean_product_list"> 
       <a name="tag_latin"></a> 
        <div class="inner_space">
            <h3 class="tag_title">#묵직한바디감</h3>
            <div class="sub_under_dec"></div>
            <div class="row_space">
   			<c:forEach items="${beanList}" var="product" begin="3" end="5" >
                <div class="col_space"> 
                   <div class="item_list">
                       <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans4.jsp">
                           <img src="view/img/${product.productImage}" alt="">
                           <div class="bean_name"> '${product.productName}'</div> 
                           <p><div class="product_price">${product.productPrice}원</div></p>
                       </a>
                   </div>
                </div>
                </c:forEach>
           </div>
       </div>
   </div>
   
    <div class="bean_product_list"> 
       <a name="tag_latin"></a> 
        <div class="inner_space">
            <h3 class="tag_title">#중남미원두</h3>
            <div class="sub_under_dec"></div>
            <div class="row_space">
   			<c:forEach items="${beanList}" var="product" begin="6" end="8" >
                <div class="col_space"> 
                   <div class="item_list">
                       <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans4.jsp">
                           <img src="view/img/${product.productImage}" alt="">
                           <div class="bean_name"> '${product.productName}'</div> 
                           <p><div class="product_price">${product.productPrice}원</div></p>
                       </a>
                   </div>
                </div>
                </c:forEach>
           </div>
       </div>
   </div>
   
    <div class="bean_product_list"> 
       <a name="tag_latin"></a> 
        <div class="inner_space">
            <h3 class="tag_title">#아프리카원두</h3>
            <div class="sub_under_dec"></div>
            <div class="row_space">
   			<c:forEach items="${beanList}" var="product" begin="9" end="11" >
                <div class="col_space"> 
                   <div class="item_list">
                       <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans4.jsp">
                           <img src="view/img/${product.productImage}" alt="">
                           <div class="bean_name"> '${product.productName}'</div> 
                           <p><div class="product_price">${product.productPrice}원</div></p>
                       </a>
                   </div>
                </div>
                </c:forEach>
           </div>
       </div>
   </div>

                

               

                 
    <!-- 
                      


                    
    <div class="bean_product_list"> 
        <div class="inner_space">
            <h3 class="tag_title">#중남미원두</h3>
            <div class="sub_under_dec"></div>
            <div class="row_space">

                <div class="col_space"> 
                <div class="item_list">
                   <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans7.jsp">
                        <img src="view/img/Marcala.png" alt="">
                        <div class="bean_name">'마르카라 마르칼라'</div> 
                        <p><div class="product_price">20,000원</div></p>
                   </a>
                </div>
                </div>

                <div class="col_space"> 
                <div class="item_list">
                   <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans8.jsp">
                        <img src="view/img/Cerrado.png" alt="">
                        <div class="bean_name">'세하도'</div> 
                        <p><div class="product_price">8,000원</div></p>
                   </a>
                </div>
                </div>

                <div class="col_space"> 
                <div class="item_list">
                    <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans9.jsp">
                        <img src="view/img/Supremo.png" alt="">
                        <div class="bean_name">   '수프리모'</div> 
                        <p><div class="product_price">9,000원</div></p>
                    </a>
                </div>
              </div>
           </div>
      </div>
    </div>

               
    <div class="bean_product_list"> 
     <a name="tag_africa"></a> 
        <div class="inner_space">
            <h3 class="tag_title">#아프리카원두</h3>
            <div class="sub_under_dec"></div>
            <div class="row_space">

                <div class="col_space"> 
                <div class="item_list">
                   <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans10.jsp">
                        <img src="view/img/TanzaniaAA.png" alt="">
                        <div class="bean_name">'탄자니아AA'</div> 
                        <p><div class="product_price">9,000원</div></p>
                   </a>
                </div>
                </div>

                <div class="col_space"> 
                <div class="item_list">
                    <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans11.jsp">
                        <img src="view/img/SidamoG4.png" alt="">
                        <div class="bean_name">   '시다모G4'</div> 
                        <p><div class="product_price">11,000원</div></p>
                   </a>
                </div>
                </div>

                <div class="col_space"> 
                <div class="item_list">
                    <a href="index.jsp?inc=view/shopping/product_detail/Coffee_Beans12.jsp">
                        <img src="view/img/KenyaAA.png" alt="">
                        <div class="bean_name">   '케냐AA'</div> 
                        <p><div class="product_price">12,000원</div></p>
                   </a>
                </div>
             </div>
           </div> -->
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