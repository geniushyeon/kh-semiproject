<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 1. upload 폴더 생성이 안되어 있으면 생성
	String saveDirectory = pageContext.getServletContext().getRealPath("/view/upload");
	System.out.println(saveDirectory);

	File saveDir = new File(saveDirectory);
	if (!saveDir.exists())
		saveDir.mkdirs();

	// 2. 최대크기 설정
	int maxPostSize = 1024 * 1024 * 5; // 5MB  단위 byte

	//3. 인코딩 방식 설정
	String encoding = "UTF-8";

	//4. 파일정책, 파일이름 충동시 덮어씌어짐으로 파일이름 뒤에 인덱스를 붙인다.
  //a.txt
	//a1.txt 와 같은 형식으로 저장된다.
	FileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest mrequest 
	= new MultipartRequest(request //MultipartRequest를 만들기 위한 request
			, saveDirectory //저장 위치
			, maxPostSize //최대크기
			, encoding //인코딩 타입
			, policy); //파일 정책
	
	String name = mrequest.getParameter("name");
	File uploadFile = mrequest.getFile("file");
  //input type="file" 태그의 name속성값을 이용해 파일객체를 생성
	long uploadFile_length = uploadFile.length();
	String originalFileName = mrequest.getOriginalFileName("file"); //기존 이름
	String filesystemName = mrequest.getFilesystemName("file"); //기존
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>