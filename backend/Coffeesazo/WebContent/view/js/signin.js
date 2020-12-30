function login_checks(){ 

	var getIdCheck= /^[a-z0-9]{5,12}$/; 

	//아이디 공백 확인 
	if($("#id").val() == ""){ 
		alert("아이디를 입력해 주세요"); $("#id").focus(); 
		return false; }

	//아이디 유효성 검사 
	if(!getIdCheck.test($("#id").val())){ 
		alert("아이디를 형식에 맞게 입력해주세요"); 
		$("#id").val(""); $("#id").focus(); 
		return false; }
	
	//비밀번호 공백 확인 
	if($("#pwd").val() == ""){ 
		alert("비밀번호를 입력해 주세요"); 
		$("#pwd").focus(); 
		return false; }

	//이름 공백 확인 
	if($("#name").val() == ""){ 
		alert("이름을 입력해 주세요"); $("#name").focus(); 
		return false; }

	//이메일 공백 확인 
	if($("#email").val() == ""){ 
		alert("아이디를 입력해 주세요"); $("#email").focus(); 
		return false; }
	}
	
	
function checks(){ 

	var getIdCheck= /^[a-z0-9]{5,12}$/; 
	var getPwdCheck =  /[~!?@#$%^&*();:_+=/-]/gi;
	
	
	//아이디 공백 확인 
	if($("#id").val() == ""){ 
		alert("아이디를 입력해 주세요"); $("#id").focus(); 
		return false; }

	//아이디 유효성 검사 
	if(!getIdCheck.test($("#id").val())){ 
		alert("아이디를 형식에 맞게 입력해주세요"); 
		$("#id").val(""); $("#id").focus(); 
		return false; }
	
	//비밀번호 공백 확인 
	if($("#pwd").val() == ""){ 
		alert("비밀번호를 입력해 주세요"); 
		$("#pwd").focus(); 
		return false; }
	
	//비밀번호 유효성검사 
	if(!getPwdCheck.test($("#pwd").val())){ 
		alert("비밀번호를 형식에 맞게 입력해주세요"); 
		$("#pwd").val(""); $("#pwd").focus(); 
		return false; }
		
		
	//이름 공백 확인 
	if($("#name").val() == ""){ 
		alert("이름을 입력해 주세요"); $("#name").focus(); 
		return false; }

	//이메일 공백 확인 
	if($("#email").val() == ""){ 
		alert("아이디를 입력해 주세요"); $("#email").focus(); 
		return false; }
	}
	

		
		
		