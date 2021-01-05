function auth_check(){ 

	if($("#auth_number").val() == ""){ 
		alert("수신 된 메일 확인 후 인증번호를 입력해 주세요."); $("#auth_number").focus(); 
		return false; 
	}

	else 	
	return true;
	
}