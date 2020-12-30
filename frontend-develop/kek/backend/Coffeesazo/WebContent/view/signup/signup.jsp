<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 | COFFEESAZO</title>
    <link rel="stylesheet" href="./view/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./view/css/signup.css" type="text/css">
    <!--favicon-->
    <link rel="shortcut icon"
        href="https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg">

</head>

<body>
    <!-- 회원가입 시작 -->
    <div class="section">
        <h1 class="sign-up-header">회원가입</h1>
        <form class="form-box" name="sign-up-form" method="POST" action="signup.do" onsubmit="return checkForm(this)">
            <div class="form-box-field warn">
                <label>
                    아이디
                    <span class="field-required">아</span>
                    <span class="warn-info" id="id-required">아이디는 필수 정보입니다.</span>
                </label>
                <input class="form-box-field-input" id="input-id" type="text"
                    name="memberId" placeholder="아이디 입력(5~11자, 영문 소문자와 숫자만 사용)" required />


            </div>
            <div class="form-box-field warn">
                <label>
                    비밀번호
                    <span class="field-required">아</span>
                    <span class="warn-info" id="password-required">비밀번호는 필수 정보입니다.</span>
                </label>
                <input class="form-box-field-input" type="password" id="input-password"
                    name="memberPwd" placeholder="비밀번호 입력(숫자, 영문, 특수문자 조합 최소 8자)" />
              
            </div>
            <div class="form-box-field warn">
                <input class="form-box-field-input" type="password" id="check-input-password" placeholder="비밀번호 확인" />
               
            </div>
            <div class="form-box-field warn">
                <label>
                    이름
                    <span class="field-required">아</span>
                    <span class="warn-info" id="name-required">이름은 필수 정보입니다.</span>
                </label>
                <input class="form-box-field-input" type="text" id="input-name" 
                name="memberName" placeholder="이름 입력" />

            </div>

            <div class="form-box-field warn">
                <label>
                    이메일
                    <span class="field-required">아</span>
                    <span class="warn-info" id="email-required">이메일은 필수 정보입니다.</span>
                </label>
                <input class="form-box-field-input" type="email" id="input-email" 
                name="memberEmail" placeholder="이메일 형식으로 입력" />

            </div>

            <div class="form-box-field warn">
                <label>
                    전화번호
                    <span class="field-required">아</span>
                    <span class="warn-info" id="phonenumber-required">전화번호는 필수 정보입니다.</span>
                </label>
                <input class="form-box-field-input" type="text" id="input-phonenumber" 
                name="memberPhone" placeholder="전화번호 입력(- 제외)" />
            </div>
            <div class="form-box-field">
                <label>주소</label>
                <div class="postcode">
                    <input class="form-box-field-input" type="text" readonly id="sample6_postcode" 
                    name="memberZipcode" placeholder="우편번호" />
                    <input class="form-box-field-input" id="sample6_postcode_search" type="button"
                        onclick="sample6_execDaumPostcode()" value="우편번호 찾기" /><br />
                </div>
                <input class="form-box-field-input" type="text" readonly id="sample6_address" 
                name="memberAddress" placeholder="주소" /><br />
                <div class="address_detail">
                    <input class="form-box-field-input" type="text" id="sample6_detailAddress" 
                    name="memberAddress" placeholder="상세주소" />
                    <input class="form-box-field-input" type="text" readonly id="sample6_extraAddress"
                    name="memberAddress" placeholder="참고항목" />
                </div>
            </div>
            <!-- 약관동의 -->
            <div class="terms-box">
                <div>
                    <input id="all-admit" type="checkbox" />
                    <label for="all-admit">약관 전체 동의</label>
                </div>
                <div>
                    <input id="coffeesazo-admit" name="admit" type="checkbox" />
                    <label for="coffeesazo-admit">커피사조 이용약관 동의(필수)</label>
                    <a href="view/signup/coffeesazo_admit.jsp"><u>약관보기</u></a>
                </div>
                <div>
                    <input id="user-info-admit" name="admit" type="checkbox" />
                    <label for="user-info-admit">개인정보 수집 및 이용동의(필수)</label>
                    <a href="view/signup/userinfo_admit.jsp"><u>약관보기</u></a>
                </div>
                <div>
                    <input id="upto-14-admit" name="admit" type="checkbox" />
                    <label for="upto-14-admit">만 14세 이상입니다.(필수)</label>
                </div>
            </div>
            <div>
                <input type="submit" class="signup-btn" value="가입하기"/>
            </div>
        </form>
    </div>
    <!-- 회원가입 끝 -->
    <!-- scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script type="text/javascript">
	 // 아이디 유효성 검사
	    $("#input-id").focusout(function () {
	        var id = $("#input-id").val();
	        var idCheckRegExp = /^[a-z0-9]{5,12}$/;
	
			if (id == "") {
	            $("#id-required").html("아이디는 필수 정보입니다.");
	            $("#id-required").css("display", "inline-block");
				
			}
			
				$.ajax ({
					type : 'POST',
					url : './IdDuplicatedCheckServlet',
					data : {memberId : id}, // 파라미터값, 사용자가 입력한 
					success : function(result) {
						if (result == 1) {
							$("#id-required").html("사용 중인 아이디입니다.");
		            		$("#id-required").css("display", "inline-block");
		            		$("#id-required").css("color", "red");
						} else if (result == 0){
							$("#id-required").css("display", "none");
							idCheck();
						} else if (!idCheckRegExp.test(id)) {
							$("#id-required").html("아이디가 형식에 맞지 않습니다.");
							$("#id-required").css("display", "inline-block");
							$("#id-required").css("color", "red");
						} else if (idCheckRegExp.test(id)) {
							$("#id-required").html("사용 가능한 아이디입니다.");
							$("#id-required").css("display", "inline-block");
							$("#id-required").css("color", "green");
				        }	
					}
					
				})
			
		})
	        

    </script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script src="./view/js/signup.js"></script>
    <script src="./view/js/bootstrap.min.js"></script>
</body>

</html>