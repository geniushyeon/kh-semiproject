<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="./view/css/coffemenu.css" type="text/css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>'리니지오 룽고'|COFFEESAZO</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
</head>

<body>
    <main>
        <div id="menu-container">
            <div class="menu-1">
                <div class="menu-toplogo">
                    <h1><a href="index.jsp?inc=view/shopping/product/capsule_coffee.jsp">캡슐커피</a></h1>
                </div>
                <div class="menu-toptag">
                    <a href="index.jsp?inc=view/shopping/product/capsule_coffee.jsp">#룽고</a>
                </div>
                
                <div class="menu-productinfo">
                    

                    
                    <img src="./view/img/Linizio_Lungo.png" alt="gold">
                    <div class="menu-result">
                        <form action="">
                            <div class="result-title">
                                <h2>클래식 에스프레소</h2>
                            </div>
                            <div class="result-product">
                                <h3>'리니지오 룽고'</h3>
                                <p>10,000원</p>
                                <p>버츄오</p>
                                <p>용량:500g(100개입)</p>
                                <p>배송비:무료</p>
                                <p>배송 기간:이틀 예정</p>
                                <p>[영업일 기준 2일 이내 발송]</p>
                                <label for="addcount">수량</label>
                                <input type="text" class="addcount" value="1">
                           
                            </div>
                            <div class="result-button">
                                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    장바구니
                                  </button>
                                  
                                  <!-- Modal -->
                                  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h5 class="modal-title" id="exampleModalLabel"></h5>
                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                         장바구니에 추가 되었습니다.
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">쇼핑 계속하기</button>
                                          <button type="button" class="btn btn-primary" onclick= " location.href = 'index.jsp?inc=view/order/shopping_cart.jsp'">장바구니로 가기</button>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                <button type="button" class="btn btn-outline-secondary"onclick= " location.href = 'index.jsp?inc=view/order/shopping_payment.jsp'">바로구매</button>
                                </div>
                                
                                    </form>
                                    </div>
                                                        
                                    </div>
                                </div>
            
            <div class="menu2">
                <img src="./view/img/Linizio_Lungo.png" alt="">
                <div class="detail-infomation">
                    <div class="detail-top">
                        <p class="p1">버츄오'리니지오 룽고'</p>
                            <p class="p2">Birchﬁo'Lineageo Rungo'</p>
                                
                            </div>
                            <div class="detail-mid">
                                <p>국가 : 브라질,콜롬비아</p>
                                <p>지역 : 브라질,콜롬비아</p>
                                <p>가공방식 : 습식 가공 방식</p>
                                <p>부드러운 풍미 와 버번종의 맥아 곡물향</p> 
                                <p>섬세한 아로마</p>
                  </div>

                </div>
            </div>
            

            </div>

    </main>
</body>

</html>