<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../../css/coffemenu.css" type="text/css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>'맥심 모카골드'|COFFEESAZO</title>
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
                    <h1><a href="#">스틱</a></h1>
                </div>
                <div class="menu-toptag">
                    <a href="#">#쉽고간편한</a>
                </div>
                
                <div class="menu-productinfo">
                    

                    
                    <img src="../../img/maxim.jpg" alt="gold">
                    <div class="menu-result">
                        <form action="">
                            <div class="result-title">
                                <h2>카페모카</h2>
                            </div>
                            <div class="result-product">
                                <h3>'맥심 모카골드'</h3>
                                <p>15,500원</p>
                                <p>동서식품</p>
                                <p>용량:500g(100개입)</p>
                                <p>배송비:2,500원</p>
                                <p>배송 기간:이틀 예정</p>
                                <p>[영업일 기준 2일 이내 발송]</p>
                                <label for="addcount">수량</label>
                                <input type="text" class="addcount" value="1">
                                <p>총 18,000원</p>
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
                
                <img src="../../img/maxim.jpg" alt="">
                <div class="detail-infomation">
                    <div class="detail-top">
                        <p class="p1">동서식품'맥심모카골드'</p>
                            <p class="p2">East-West Foods'Maxim Moccagold'</p>
                                
                            </div>
                            <div class="detail-mid">
                                <p>국가 : 온두라스,콜롬비아</p>
                                <p>지역 : 온두라스,콤롬비아</p>
                                <p>맥심 모카골드 마일드 커피에는</p>
                                <p>아라비카 원두의 깨끗하고, </p> 
                                <p>신선한 향미를 그대로 전달할 수 있는</p>
                                <p>APEX(Advanced Prime Extraction) 공법을</p>
                                <p>적용하였습니다.</p>

                            </div>

                </div>
            </div>
            

            </div>

    </main>
</body>

</html>