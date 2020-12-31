package com.coffeesazo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.coffeesazo.member.model.dao.MemberDao2;



@WebServlet("/change")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String id = (String) request.getAttribute("result");
		System.out.println("과연 id가 넘어왔을지? " +id);
		String pwd = request.getParameter("pwd");
		
		System.out.println("고객 입력 비밀번호 : "+ pwd); //이걸로 update
		
		//MemberVo vo = new MemberVo();
		//vo.setMemberId(id);
		//vo.setMemberPwd(pwd);
		MemberDao2 dao = new MemberDao2();
		System.out.println("dao객체가 생성되었습니다.");
		int result = dao.updatepwd(id , pwd); 
		System.out.println("DB 조회 결과값 :" + result + "(성공 : 0 / 실패 : 1)");
		
		if(result == 0) {
			//업데이트성공시
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?inc=view/signin/login.jsp");
			//dispatcher.forward(request, response);
		}
		else out.println("<script>alert('비밀번호 재설정에 실패하였습니다.'); history.back();</script>");
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
