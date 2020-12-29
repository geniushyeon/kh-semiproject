<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../../css/bootstrap.min.css"type="text/css">
    <link rel="stylesheet" href="../../css/header.css" type="text/css">
    <link rel="stylesheet" href="../../css/footer.css" type="text/css">
    <link rel="stylesheet" href="../../css/coffemenu.css" type="text/css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>'에센시아 디카페인'|COFFEESAZO</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <!--favicon-->
    <link rel="shortcut icon" href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
</head>

<body>
    <header class="header">
        <div class="header-align">
            <div class="header-logo">
                <a href="/frontend-develop/Frontend-최종-1차/지현/index.html"><img src="../../img/logo_white.png" class="logo"></a>
            </div>
            <div class="btns-signin-signup">
                <span><a href="/frontend-develop/Frontend-최종-1차/민영/COFFEESAZO/login2.html">로그인</a></span>
                <span><a href="/frontend-develop/Frontend-최종-1차/지현/signup.html">회원가입</a></span>
                <span><a href="/frontend-develop/Frontend-최종-1차/제윤지/front/공지사항.html">고객센터</a></span>
                <span><a href="/frontend-develop/Frontend-최종-1차/은규/Project/front/shopcart.html"><img src="../../img/shoppingcart_white.png" id="shoppingcart"></a></span>
            </div>
        </div>

        <div class="shopping">
            <span id="wholebean"><a href="/frontend-develop/Frontend-최종-1차/서우/wholebean.html">원두</a></span>
            <!-- onmouseover 써볼지? (javascript)-->
            <span id="stickcoffee"><a href="/frontend-develop/Frontend-최종-1차/서우/stickcoffee.html">스틱커피</a></span>
            <span id="capsulecoffee"><a href="/frontend-develop/Frontend-최종-1차/서우/capsulecoffee.html">캡슐커피</a></span>
            
        </div>
    </header>
    <main>
        <div id="menu-container">
            <div class="menu-1">
                <div class="menu-toplogo">
                    <h1><a href="#">원두</a></h1>
                </div>
                <div class="menu-toptag">
                    <a href="#">#묵직한바디감</a>
                </div>
                
                <div class="menu-productinfo">
                    

                    
                    <img src="../../img/Esencia.png" alt="gold">
                    <div class="menu-result">
                        <form action="">
                            <div class="result-title">
                                <h2>클래식 에스프레소 블렌드</h2>
                            </div>
                            <div class="result-product">
                                <h3>'에센시아 디카페인'</h3>
                                <p>13,500원</p>
                                <p>콜롬비아</p>
                                <p>용량:200g</p>
                                <p>배송비:2,500원</p>
                                <p>배송 기간:이틀 예정</p>
                                <p>[영업일 기준 2일 이내 발송]</p>
                                <label for="addcount">수량</label>
                                <input type="text" class="addcount" value="1">
                                <p>총 16,000원</p>
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
                                          <button type="button" class="btn btn-primary" onclick= " location.href = '/frontend-develop/Frontend-최종-1차/은규/Project/front/shopcart.html'">장바구니로 가기</button>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                <button type="button" class="btn btn-outline-secondary"onclick= " location.href = '/frontend-develop/Frontend-최종-1차/은규/Project/front/payment.html'">바로구매</button>
                                </div>
                                
                                    </form>
                                    </div>
                                                        
                                    </div>
                                </div>
            
            <div class="menu2">
                <img src="../../img/Esencia.png" alt="">
                <div class="detail-infomation">
                    <div class="detail-top">
                        <p class="p1">콜롬비아'에센시아디카페인'</p>
                            <p class="p2">Colombia'EsenciaDecaffeination'</p>
                                
                            </div>
                            <div class="detail-mid">
                                <p>국가 : COLOMBIA</p>
                                <p>지역 : HUILA</p>
                                <p>농장 : ESENCIA</p>
                                <p>농장주 : SMALLFARMERS</p> 
                                <p>재배 고도 : 1,600-1,800M</p>
                                <p>품종 : CATURRA-COLOMBIA-CASTILLO</p>
                                <p>가공방식 : DECAFFEINATION</p>

                            </div>

                </div>
            </div>
            

            </div>

    </main>
    
    
   
    <footer>
        <div class="footer">
            <ul class="footer-list-box">
                <li>COFFEESAZO | 대표자: 이지현 | 사업자등록번호 123-45-67890</li>
                <li>서울특별시 영등포구 선유도2로 57 이레빌딩(구관) 19F</li>
                <li>책임자: 제윤지 | 개인정보관리책임자: 김은규</li>
                <li>고객센터 02-1234-5678 | E-mail: customer@coffeesazo.com</li>
            </ul>
        </div>
    </footer>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/popper.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>l>