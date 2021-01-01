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
	<script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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
    
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	
	<script type="text/javascript">
	$("#input-id").focusout(function () {
		var id = $("#input-id").val();
		var idCheckRegExp = /^[a-z0-9]{5,12}$/;
		var idExists;
		
		
		var idCheck = function() {
			if (id == "") {
				$("#id-required").html("아이디는 필수 정보입니다.");
				$("#id-required").css("display", "inline-block");
				$("#id-required").css("color", "red");
			}
			else if (!idCheckRegExp.test(id)) {
				$("#id-required").html("아이디가 형식에 맞지 않습니다.");
				$("#id-required").css("display", "inline-block");
				$("#id-required").css("color", "red");
			} else if (idCheckRegExp.test(id)) {
				$("#id-required").html("사용 가능한 아이디입니다.");
				$("#id-required").css("display", "inline-block");
				$("#id-required").css("color", "green");
		        
			}	
		}
		

		console.log(id);

		$.ajax ({
				type : 'POST',
				url : './IdDuplicatedCheckServlet',
				async: false,
				data : {memberId : id}, // 파라미터값 : 사용자가 입력한 id 
				success : function(result) {
					if (result == 1) {
						$("#id-required").html("사용 중인 아이디입니다.");
		           		$("#id-required").css("display", "inline-block");
		           		$("#id-required").css("color", "red");
						
					} else if (result == 0){
						$("#id-required").css("display", "none");
					}
					idExists = result;	
				}
			})
		console.log(idExists);
		if (idExists == 0) {
			idCheck();
		}

	})
	
	 $("#input-email").focusout(function () {
        var email = $("#input-email").val();
        var emailCheckRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var emailExists;
        
       	var emailCheck = function() {	       		
	        if (email == "") {
	            // 입력 여부 검사
	            $("#email-required").html("이메일은 필수 정보입니다.");
	            $("#email-required").css("display", "inline-block");
	        } else if (!emailCheckRegExp.test(email)) {
	            // 형식 유효성 검사
	            $("#email-required").html("이메일 형식에 맞지 않습니다.");
	            $("#email-required").css("display", "inline-block");
	            $("#email-required").css("color", "red");
	        } else if (emailCheckRegExp.test(email)) {
	            // 형식에 맞을 때
	            // db에 있는 이메일 사용불가 구현 필요
	            $("#email-required").html("사용 가능한 이메일입니다.");
	            $("#email-required").css("display", "inline-block");
	            $("#email-required").css("color", "green");
	        }
       	}
       	
       	console.log(email);
       	
       	$.ajax ({
       		type : 'POST',
       		url : './EmailDuplicatedCheckServlet',
       		async : false,
       		data : {memberEmail : email}, // 파라미터값 : 사용자가 입력한 값 
       		success : function(result) {
       			if (result == 1) {
       				$("#email-required").html("사용 중인 이메일 주소입니다.");
	           		$("#email-required").css("display", "inline-block");
	           		$("#email-required").css("color", "red");
	       			emailExists = result;
	           		
       			} else if (result == 0) {
       				$("#email-required").css("display", "none");
	       			emailExists = result;
       			}
       		}
       		
       	})
       	console.log(emailExists);
       	
       	if (emailExists == 0) {
       		emailCheck();
       	}
       	
    })

    $("#input-phonenumber").focusout(function () {
        var phonenumber = $("#input-phonenumber").val();
        var phonenumberCheckRegExp = /^\d{3}\d{3,4}\d{4}$/;
		var phonenumberExists;
        
        var phonenumberCheck = function() {
	        if (phonenumber == "") {
	            $("#phonenumber-required").html("전화번호는 필수 정보입니다.");
	            $("#phonenumber-required").css("display", "inline-block");
	            $("#phonenumber-required").css("color", "red");
	        }
	        else if (phonenumberCheckRegExp.test(phonenumber) == false) {
	            $("#phonenumber-required").html("형식에 맞게 입력해주세요.");
	            $("#phonenumber-required").css("display", "inline-block");
	            $("#phonenumber-required").css("color", "red");
	        } else {
	            $("#phonenumber-required").html("사용 가능한 전화번호입니다.");
	            $("#phonenumber-required").css("display", "inline-block");
	            $("#phonenumber-required").css("color", "green");
	        }
        	
        }
        
        $.ajax ({
        	type : 'POST',
        	url : './PhoneDuplicatedCheckServlet',
        	async : false,
        	data : {memberPhone : phonenumber}, // 파라미터값 : 사용자가 입력한 값 
        	success : function(result) {
        		if (result == 1) {
        			$("#phonenumber-required").html("사용 중인 전화번호입니다.");
	           		$("#phonenumber-required").css("display", "inline-block");
	           		$("#phonenumber-required").css("color", "red");
		           	phonenumberExists = result;
       			} else if (result == 0) {
       				$("#phonenumber-required").css("display", "none");
		           	phonenumberExists = result;
       			}
        	}
        })
        console.log(phonenumberExists);
        
        if (phonenumberExists == 0) {
        	phonenumberCheck();
        }
        
        
    })

	</script>
	<script src="./view/js/signup.js"></script>
    <script src="./view/js/bootstrap.min.js"></script>
</body>

</html>