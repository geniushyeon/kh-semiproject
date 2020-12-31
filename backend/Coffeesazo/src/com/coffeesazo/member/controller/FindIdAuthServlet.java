package com.coffeesazo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/auth")
public class FindIdAuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
	
	
		String auth_number =request.getParameter("auth_number");
		System.out.println("고객이 입력한 인증번호 : " + auth_number);
		String AuthenticationKey = (String)request.getSession().getAttribute("AuthenticationKey");
		String id = (String)request.getSession().getAttribute("id");
		System.out.println("과연 아이디가저장돼서 넘어 왔을지? " + id);
		System.out.println("세션에 저장된 보낸 인증번호 : " + AuthenticationKey);
		
		
		if(!AuthenticationKey.equals(auth_number))
        {
			out.println("<script>alert('인증번호가 일치하지 않습니다.'); history.back();</script>"); 
            
        }
		else {
			request.setAttribute("id", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?inc=view/signin/find_id_success.jsp");
			dispatcher.forward(request, response); 
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
