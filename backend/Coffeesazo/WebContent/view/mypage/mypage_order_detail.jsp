<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문상세보기 |  COFFEESAZO</title>
    <!--favicon-->
	<link rel="stylesheet" type="text/css" href="view/css/mypage_order_detail.css">
    <link rel="shortcut icon"
        href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">
</head>

<body>
    <!-- 로그인 후 index -->

    <div class="main-container">
        <h1>주문상세보기</h1>
        <!-- 주문정보 테이블 시작 -->
        <h3 class="table-title">주문 정보</h3>
        <form action="" method="POST">
            <table class="order-detail">
                <tbody>
                    <tr>
                        <th scope="row">주문번호</th>
                        <td>20201223-01</td>
                    </tr>
                    <tr>
                        <th scope="row">주문일자</th>
                        <td>2020-12-23 11:11:02</td>
                    </tr>
                    <tr>
                        <th scope="row">주문자</th>
                        <td>이지현</td>
                    </tr>
                    <tr>
                        <th scope="row">연락처</th>
                        <td>01012345678</td>
                    </tr>
                    </thead>
        </form>
        </table>
        <!-- 결제정보 테이블 -->
        <h3 class="table-title">결제 정보</h3>
        <table class="payment-detail">
            <form action="" method="POST">
                <thead>
                    <tr>
                        <th scope="row">총 주문 금액</th>
                        <td>50,000원</td>
                    </tr>
                    <tr>
                        <th scope="row">결제수단</th>
                        <td>무통장입금</td>
                    </tr>
                </thead>
            </form>
        </table>
        <!-- 주문상품정보 테이블 -->
        <h3 class="table-title">주문 상품 정보</h3>
        <table class="order-product-detail">
            <form action="" method="POST">
                <thead>
                    <tr>
                        <th id="order-number">주문번호</th>
                        <th>이미지</th>
                        <th>상품명</th>
                        <th id="order-count">수량</th>
                        <th id="product-price">판매가</th>
                    </tr>
                </thead>

                <!-- 테이블 각 항목 -->
                <tbody>
                    <tr>
                        <!-- <td rowspan="2">20201223-01</td> -->
                        <td>20201223-01</td>
                        <td><img src="..." alt="..."></td>
                        <td>엘 라우렐</td>
                        <td>1</td>
                        <td>16,000원</td>
                    </tr>
                    <tr>
                        <td>20201223-01</td>
                        <td><img src="..." alt="..."></td>
                        <td>부산제</td>
                        <td>1</td>
                        <td>14,000원</td>
                    </tr>
                </tbody>
            </form>
        </table>
        <!-- 배송지정보 테이블 -->
        <h3 class="table-title">배송지 정보</h3>
        <table class="destination-info">
            <form action="" method="POST">
                <thead>
                    <tr>
                        <th scope="row">받으시는 분</th>
                        <td>이지현</td>
                    </tr>
                    <tr>
                        <th scope="row">우편번호</th>
                        <td>12345</td>
                    </tr>
                    <tr>
                        <th scope="row">주소</th>
                        <td>서울시 용산구 독서당로 111 한남더힐 101호</td>
                    </tr>
                    <tr>
                        <th scope="row">연락처</th>
                        <td>01098765432</td>
                    </tr>
                    <tr>
                        <th scope="row">요청사항</th>
                        <td>문 앞에 놔주세요.</td>
                    </tr>

                </thead>
        </table>
        <div class="btns-orderlist">
            <span><input type="button" value="주문내역으로"
                onclick="location.href='/frontend-develop/Frontend-최종-1차/백종웅/Front/Mypage_order.html'" /></span>
            <span><input type="submit" id="order-cancel" value="주문취소" action=""></span>
        </div>

        </form>
    </div>
     <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>   
<script>
	var orderCancel = document.getElementById("order-cancel");
	orderCancel.onclick = function() {
		if (confirm("주문을 취소하시겠습니까?") == true) {
			alert("주문이 취소되었습니다.");
			document.form.submit();
		} else {
			return;
		}	
	}
</script>
</body>

</html>