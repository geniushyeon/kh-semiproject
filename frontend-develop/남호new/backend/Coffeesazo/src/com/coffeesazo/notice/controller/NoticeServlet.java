package com.coffeesazo.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coffeesazo.notice.model.service.NoticeService;
import com.coffeesazo.notice.model.vo.NoticeVo;

@WebServlet("/notice")
public class NoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public NoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		ArrayList<NoticeVo> noticeList = new NoticeService().selectNoticeList();
	
		if(!noticeList.isEmpty()) {
			request.setAttribute("noticeList", noticeList);
			String url = "index.jsp?inc=view/notice/";
			RequestDispatcher view = request.getRequestDispatcher(url + "notice.jsp");
			view.forward(request, response);
			System.out.println(noticeList);
		} else {
			response.sendRedirect("");
		}	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
