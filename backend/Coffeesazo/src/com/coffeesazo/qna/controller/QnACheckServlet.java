package com.coffeesazo.qna.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coffeesazo.qna.model.dao.QnADao;

/**
 * Servlet implementation class QnACheckServlet
 */
@WebServlet("/qnacheck")
public class QnACheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QnACheckServlet() {
		super();

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession(); 
		//String memberid = ((String)session.getAttribute("id"));
		
		int qnaIndex = Integer.parseInt(request.getParameter("qnaIndex"));
		System.out.println(qnaIndex);
		
		QnADao dao = new QnADao();
		System.out.println("dao객체가 생성되었습니다.");

		int result = dao.checkqna(qnaIndex);

		System.out.println("DB 조회 결과값 :" + result + "(성공 : 1 / 실패 : 0)");

		if(result == 1) {
			//업데이트성공시

			RequestDispatcher dispatcher = request.getRequestDispatcher("qna");
			dispatcher.forward(request, response);
		}
		else out.println("<script>alert('등록에 실패하였습니다..'); history.back();</script>");
	}
}