<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기 | COFFEESAZO</title>
</head>
<body>
<main>
        <div class="main-logo">
            <h1>결제하기</h1>
        </div>

        <div id="main-container">
            <div class="top-logo">
                <h2>구매 정보</h1>
            </div>
            <div class="info-buy-container">
                <div class="info-buy">
                    <img src="./img/4-1.png" alt="">
                    <div class="info-buy-text">
                        <strong>콜롬비아 원두</br></strong>
                        <p><strong>35000원</strong>x 1개</p>
                        <u>무료배송</u>
                        <p><strong></strong>구매가격 &nbsp;</strong><strong>35000원</strong></p>
                    </div>
                </div>
                <div class="info-buy">
                    <img src="./img/4-1.png" alt="">
                    <div class="info-buy-text">
                        <strong>가나 원두</br></strong>
                        <p><strong>35000원</strong>x 1개</p>
                        <u>무료배송</u>
                        <p><strong></strong>구매가격 &nbsp;</strong><strong>35000원</strong></p>
                    </div>
                </div>
                <div class="info-buy">
                    <img src="./img/4-1.png" alt="">
                    <div class="info-buy-text">
                        <strong>가나 원두</br></strong>
                        <p><strong>35000원</strong>x 1개</p>
                        <u>무료배송</u>
                        <p><strong></strong>구매가격 &nbsp;</strong><strong>35000원</strong></p>
                    </div>
                </div>
                


            </div>

            <div class="info-user-container">
                <div class="info-user">
                    <div class="top-user">
                        <div class="form-container">
                            <form action="" method="POST">
                                <h2>주문자 정보</h2>
                                <div class="form-userinfo">
                                    <label for="name">이름</label>
                                    <input class="name" id="name" type="text" style="margin-left: 46px;">
                                    <br>
                                    <label for="E-mail">이메일</label>
                                    <input class="E-mail" id="E-mail" type="email" style="margin-left: 27px;">
                                    <br>
                                    <label for="number">연락처</label>
                                    <input class="number" id="number" type="text" style="margin-left: 27px;">
                                </div>
                                <div class="form-container2">
                                    <h2>배송 정보</h2>
                                    <div class="form-address">
                                        <input type="text" id="postcode" placeholder="우편번호" maxlength="5">
                                        <button type="button" class="btn btn-secondary" id="postbutton"
                                            onclick="sample4_execDaumPostcode()">우편번호</button><br>

                                        <input type="text" id="roadAddress" placeholder="도로명주소">
                                        <input type="text" id="jibunAddress" placeholder="지번주소">
                                        <span id="guide" style="color:#999;display:none"></span><br>
                                        <input type="text" id="detailAddress" placeholder="상세주소">
                                        <input type="text" id="extraAddress" placeholder="참고항목">
                                        <br>
                                        <label for="">배송 시 요청 사항 </label>
                                        <br>
                                        <input class="delivery-rq" id="delivery-rq" type="text">
                                        <br>
                                        <label for="">수령인</label>
                                        <br>
                                        <input class="recipient-rq" id="recipient-rq" type="text">
                                        <br>
                                        <label for="">연락처</label>
                                        <br>
                                        <input class="number-rq" id="number-rq" type="text">
                                    </div>
                                </div>
                                <div class="form-container3">
                                    <h2>결제 방법 선택</h2>
                                    <br>
                                    <div class="payment-radio-container">
                                        <div class="card">
                                            <input type="radio" name="gener" checked="checked"
                                                style="height: 20px; width: 20px; margin-right: 50px;" value="card"/>
                                            <span class="up" style="font-size: 20px;">신용카드/체크카드</span>
                                        </div>
                                        <div class="money">
                                            <input type="radio" name="gener"
                                                style="height: 20px; width: 20px; margin-right: 50px;" value="money" />
                                            <span class="up" style="font-size: 20px;">무통장입금</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-container4">
                                    <h2>주문 정보 확인</h2>
                                    <div class="form-checkorder">
                                        <table class="checkorder-table1">
                                            
                                                <tr>
                                                    <td>결제방법</td>
                                                    <td>결제방법</td>
                                                </tr>
                                                <tr>
                                                    <td>상품금액</td>
                                                    <td>35,000원</td>
                                                </tr>
                                                <tr>
                                                    <td>배송비</td>
                                                    <td>0원</td>
                                                </tr>
                                            
                                            
                                                
                                            </table>
                                            <table class="checkorder-table2">
                                                <tr>
                                                    <td>최종 결제 금액</td>
                                                    <td>35,000원</td>
                                                </tr>
                                            </table>
                                            

                                                

                                    </div>
                                </div>
                                <div class="form-container5">
                                    <h2>이용 약관</h2>
                                    <div class="tos1">
                                        <input type="checkbox"  style="width: 25; height:15px;">
                                        <p style="display: inline-block;">개인정보 판매자 제공에 동의합니다.</p>
                                        <div class="TermsOfService1" style="display: inline-block;margin-left: 38px;"><!--스크립트로 html불러옴--></div>
                                    </div>
                                    <div class="tos2">
                                        <input type="checkbox"  style="width: 25;height:15px;">
                                        <p style="display: inline-block;">구매자의 정보수집 및 이용에 동의합니다.</p>
                                        <div class="TermsOfService2" style="display: inline-block;"><!--스크립트로 html불러옴--></div>
                                        
                                    </div>
                                </div>
                                
                                <div class="form-container6">
                                    <div class="form-submit">
                                        <button type="submit" class="btn btn-outline-success">구매하기</button>
                                      </div>      

                                </div>
                                        

                                
                                
                            </form>

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </main>
</body>
</html>