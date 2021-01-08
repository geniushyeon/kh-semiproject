package com.coffeesazo.mypages.controller;

import java.io.IOException; 
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coffeesazo.Page;
import com.coffeesazo.mypages.model.service.MyQnaService;
import com.coffeesazo.mypages.model.vo.MyQnaList;

/**
 * Servlet implementation class MyQnaListServlet
 */
@WebServlet("/MyQnaList")
public class MyQnaListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyQnaListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		int nowPage = 1;
		String findStr = "";

		Page page = null;

		if(request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		if(request.getParameter("findStr") != null) {
			findStr = request.getParameter("findStr");
		}

		page = new Page();
		page.setNowPage(nowPage);
		System.out.println(page.getNowPage());
		page.setFindStr(findStr);
		HttpSession session = request.getSession(); 
		String memberid = ((String)session.getAttribute("id"));
		List<MyQnaList> qnaList = new MyQnaService().SelectQnaList(memberid);






		if(!qnaList.isEmpty()) {
			request.setAttribute("qnaList", qnaList);
			request.setAttribute("page", page);
			System.out.println("스타트번호:"+page.getStartNo());
			String url = "index.jsp?inc=view/mypage/";
			RequestDispatcher view = request.getRequestDispatcher(url + "Mypage_qna.jsp");
			view.forward(request, response);
			System.out.println(qnaList);
		} else {
			response.sendRedirect("");
		}

	}

}



