/**
 * 
 */

 $("#input-email").focusout(function () {
        var email = $("#input-email").val();
        var emailCheckRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var emailExists;
        
       	var emailCheck = function() {	       		
	        if (email == "") {
	            // 입력 여부 검사
	            $("#email-required").html("이메일은 필수 정보입니다.");
	            $("#email-required").css("display", "inline-block");
				$("#email-required").css("color", "red");
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

 $("#input-new-password").focusout(function () {
        var password = $("#input-new-password").val();
        var numRegExp = password.search(/[0-9]/g);
        var engRegExp = password.search(/[a-z]/ig);
		
        var specialRegExp = password.search(/[~!?@#$%^&*();:_+=/-]/gi);

        if (password.length < 8) {
            // 길이 검사
            $("#new-password-required").html("8자리 이상 입력해주세요.");
            $("#new-password-required").css("display", "inline-block");
            $("#new-password-required").css("color", "red");
            return false;

        } else if (password.search(/\s/) != -1) {
            // 비밀번호 공백 검사
            $("#new-password-required").html("비밀번호에는 공백을 사용할 수 없습니다.");
            $("#new-password-required").css("display", "inline-block");
            $("#new-password-required").css("color", "red");
            return false;

        } else if (numRegExp < 0 || engRegExp < 0 || specialRegExp < 0) {
            // 형식 유효성 검사
            $("#new-password-required").html("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
            $("#new-password-required").css("display", "inline-block");
            $("#new-password-required").css("color", "red");
            return false;
        } else {
            $("#new-password-required").css("display", "none");
            return true;
        }
    })

    $("#input-new-password-check").focusout(function () {
        var password = $("#input-new-password").val();
        var checkPassword = $("#input-new-password-check").val();
		console.log(checkPassword);
		
        if (checkPassword == "") {
            // 입력 여부 검사
            $("#new-password-check-required").html("비밀번호 확인은 필수 정보입니다.");
            $("#new-password-check-required").css("display", "inline-block");
            $("#new-password-check-required").css("color", "red");
            return false;

        } else if (checkPassword != password) {
            // 비밀번호 일치 검사
            $("#new-password-check-required").html("비밀번호가 일치하지 않습니다.");
            $("#new-password-check-required").css("display", "inline-block");
            $("#new-password-check-required").css("color", "red");
            return false;

        } else {
            $("#new-password-check-required").css("display", "none");
            return true;
        }
    })