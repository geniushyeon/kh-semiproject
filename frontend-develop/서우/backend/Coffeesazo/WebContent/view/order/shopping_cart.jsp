<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="view/css/shopping_cart.css" type="text/css">
<title>장바구니 | COFFEESAZO</title>
</head>
<body>
<main>


        <div class="top-title">
            <h1>장바구니</h1>
        </div>
        <table class="data-result">
            <form action="" method="POST">
                <thead>
                    <tr>

                        <th>선택</th>
                        <th>상품번호</th>
                        <th>상품이미지</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>합계</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td><input id="checkbox" type="checkbox"></td>
                        <td>1231415</td>
                        <td height="0">
                            <div style="height:100%"><img src="./img/4-1.png" height="100%"></div>
                        </td>
                        <td>상품명</td>
                        <td>10000원</td>
                        <td>5개</td>
                        <td>50000원</td>
                    </tr>
                    <tr>
                        <td><input id="checkbox" type="checkbox"></td>
                        <td>1231415</td>
                        <td height="0">
                            <div style="height:100%"><img src="./img/4-1.png" height="100%"></div>
                        </td>
                        <td>상품명</td>
                        <td>10000원</td>
                        <td>5개</td>
                        <td>50000원</td>
                    </tr>


                </tbody>

                <tfoot>
                    <tr>
                        <td colspan="6"></td>
                        <td>총가격:15000000만원</td>
                    </tr>
                </tfoot>
        </table>
        <div id="button-container">

            <div class="remove-button">
                
                <!--알랏1-->
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    선택삭제
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">선택삭제</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                정말 삭제하시겠습니까?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                <button type="button" class="btn btn-primary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--------->
                
                <!--알랏2-->
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
                    모두삭제
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">모두삭제</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                정말 삭제하시겠습니까?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                <button type="button" class="btn btn-primary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--------->
            </div>
            <div class="check-button">
                <button type="button" onclick= " location.href = 'index.jsp?inc=view/order/shopping_payment.jsp'" class="btn btn-outline-success">구매하기</button>
                <button type="button" class="btn btn-outline-secondary">쇼핑계속하기</button>



            </div>
        </div>

        </form>

    </main>
</body>
</html>