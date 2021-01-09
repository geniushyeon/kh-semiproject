<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="view/css/shopping_payment.css"
	type="text/css">
<link rel="stylesheet" href="view/css/shopping_address.css"
	type="text/css">
<title>결제하기 | COFFEESAZO</title>
</head>
<body>
	<main>
		<div class="main-logo">
			<h1>결제하기</h1>
		</div>

		<form action="allbuy_submit" method="POST">
			<div id="main-container">
				<div class="top-logo">
					<h2>
						구매 정보
						</h1>
				</div>
				<c:forEach items="${pList}" var="buylist">
					<div class="info-buy-container">
						<div class="info-buy">
							<img src="view/img/${buylist.productImage}" alt="">
							<div class="info-buy-text">
								<strong>${buylist.productName}</br></strong> <input type="hidden"
									value="${buylist.productIndex }" name="index"> <input
									type="hidden" value="${buylist.orderCount }" name="count">
								<p>
									<strong><fmt:formatNumber value="${buylist.productPrice}" pattern="###,###,###원" /></strong>x
									${buylist.orderCount}개
								</p>
								<u>무료배송</u>
								<p>
									<strong></strong>구매가격 &nbsp;</strong><strong><fmt:formatNumber value="${buylist.productPrice * buylist.orderCount }" pattern="###,###,###원" /></strong>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="info-user-container">
					<div class="info-user">
						<div class="top-user">
							<div class="form-container">
								<h2>주문자 정보</h2>
								<div class="form-userinfo">
									<label for="name">이름</label> <input class="name" id="name"
										type="text" style="margin-left: 46px;" name="name"> <br>
									<label for="E-mail">이메일</label> <input class="E-mail"
										id="E-mail" type="email" style="margin-left: 27px;"
										name="e-mail"> <br> <label for="number">연락처</label>
									<input class="number" id="number" type="text"
										style="margin-left: 27px;" name="number">
								</div>
								<div class="form-container2">
									<h2>배송 정보</h2>
									<div class="form-address">
										<input type="text" id="sample6_postcode" placeholder="우편번호"
											maxlength="5" readonly="readonly" name="postcode">
										<button type="button" class="btn btn-secondary"
											id="postbutton" onclick="sample6_execDaumPostcode()">우편번호</button>
										<br> <input type="text" id="sample6_address"
											placeholder="도로명주소" name="address"><span id="guide"
											style="color: #999; display: none"></span><br> <input
											type="text" id="sample6_detailAddress" placeholder="상세주소"
											style="width: 300px" name="address"> <input
											type="text" id="sample6_extraAddress" placeholder="참고항목"
											name="address"> <br> <label for="">배송
											시 요청 사항 </label> <br> <input class="delivery-rq"
											id="delivery-rq" type="text" name="delivery-rq"> <br>
										<label for="">수령인</label> <br> <input
											class="recipient-rq" id="recipient-rq" type="text"
											name="recipient-rq"> <br> <label for="">연락처</label>
										<br> <input class="number-rq" id="number-rq" type="text"
											name="number-rq">
									</div>
								</div>
								<div class="form-container3">
									<h2>결제 방법 선택</h2>
									<br>
									<div class="payment-radio-container">
										<div class="card">
											<input type="radio" name="gener" checked="checked"
												style="height: 20px; width: 20px; margin-right: 50px;"
												value="카드결제" /> <span class="up" style="font-size: 20px;">신용카드/체크카드</span>
										</div>
										<div class="money">
											<input type="radio" name="gener"
												style="height: 20px; width: 20px; margin-right: 50px;"
												value="무통장입금" /> <span class="up" style="font-size: 20px;">무통장입금</span>
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
												<td><fmt:formatNumber value="${allresult}" pattern="###,###,###원" /></td>

											</tr>

										</table>
										<input type="hidden" value="${allresult}" name="allresult">




									</div>
								</div>
		
		<div class="form-container5">
			<h2>이용 약관</h2>
			<div class="tos1">
				<input type="checkbox" style="width: 25; height: 15px;">
				<p style="display: inline-block;">개인정보 판매자 제공에 동의합니다.</p>
				<div class="TermsOfService1"
					style="display: inline-block; margin-left: 38px;">
					<button type="button" class="btn btn-outline-secondary"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						id="servicebtn1">이용약관</button>
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">이용약관</h5>

								</div>
								<div class="modal-body1">
									<!-- 약관내용 -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tos2">
				<input type="checkbox" style="width: 25; height: 15px;">
				<p style="display: inline-block;">구매자의 정보수집 및 이용에 동의합니다.</p>
				<div class="TermsOfService2" style="display: inline-block;">
					<button type="button" class="btn btn-outline-secondary"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						id="servicebtn1">이용약관</button>
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">이용약관</h5>

								</div>
								<div class="modal-body1">
									<!-- 약관내용 -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="form-container6">
			<div class="form-submit">
				<button type="submit" class="btn btn-outline-success">구매하기</button>
			</div>

		</div>





		</div>

		</div>
		</div>


		</div>
		</div>
		</form>
	</main>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="view/js/addressApi.js"></script>

</body>
</html>