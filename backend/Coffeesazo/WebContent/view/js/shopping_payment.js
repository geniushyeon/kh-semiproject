/**
 * 
 */

function isAllChecked() {
		const checkList = document.getElementsByName("admit");
		const len = checkList.length;
		
		for(var i=0; i<len; i++) {
			if (!checkList[i].checked) {
				return false;
			}
		}
		
		return true;
	}
	
function checkForm() {
		
		var form = document.getElementsByName("form_buy");
		if (!isAllChecked()) {
			alert("약관에 동의하셔야 구매가 가능합니다.");
			return false;
		}
		form.submit();
	}

$("#sample6_postcode").focusout(function() {
	var zipcode = $("#sample6_postcode").val();
	
	if (zipcode == "") {
		$("#address-required").html("주소는 필수 정보입니다.");
		$("#address-required").css("color", "red");
		$("#address-required").css("display", "inline-block");
	} else {
		$("#address-required").html("");
	}
	
})

$("#sample6_postcode").focusout(function() {
	var address = $("#sample6_address").val();
	
	if (address == "") {
		$("#address-required").html("주소는 필수 정보입니다.");
		$("#address-required").css("color", "red");
		$("#address-required").css("display", "inline-block");
	} else {
		$("#address-required").html("");
	}
	
})

$("#recipient-rq").focusout(function() {
	var receiverName = $(this).val();
	
	if (receiverName == "") {
		$("#name-required").html("수령인 이름은 필수 정보입니다.");
		$("#name-required").css("color", "red");
		$("#name-required").css("display", "inline-block");
	} else {
		$("#name-required").html("");
	}
})

$("#number-rq").focusout(function() {
	var receiverPhone = $(this).val();
	var phonenumberCheckRegExp = /^\d{3}\d{3,4}\d{4}$/;
	
	
	if (receiverPhone == "") {
		$("#phonenumber-required").html("수령인 전화번호는 필수 정보입니다.");
		$("#phonenumber-required").css("color", "red");
		$("#phonenumber-required").css("display", "inline-block");
	} else if (phonenumberCheckRegExp.test(receiverPhone) == false ) {
		$("#phonenumber-required").html("형식에 맞게 입력해주세요.");
		$("#phonenumber-required").css("color", "red");
		$("#phonenumber-required").css("display", "inline-block");
		
	} else {
		$("#phonenumber-required").html("");
	}
})

