package com.coffeesazo.mypages.controller;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/MyQnaList")
public class MyQnaListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MyQnaListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response); 
	}
//현제 게시판과 다르게 나의정보가아닌 타인의 db가생기면오류뜸
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(); 
		String memberid = ((String)session.getAttribute("id"));
		List<MyQnaList> qnaList = new MyQnaService().SelectQnaList(memberid);
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
		
	
		List<MyQnaList> qnaPage = new MyQnaService().selectQnaPageList(page);


		if(!qnaPage.isEmpty()) {
			request.setAttribute("qnaList", qnaPage);
			request.setAttribute("page", page);

			String url = "index.jsp?inc=view/mypage/";
			RequestDispatcher view = request.getRequestDispatcher(url + "Mypage_qna.jsp");
			view.forward(request, response);
			System.out.println(qnaPage);
		} else {
			response.sendRedirect("");
		}

	}

}



