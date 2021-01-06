package com.coffeesazo.qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coffeesazo.qna.mode.service.QnAService;
import com.coffeesazo.qna.vo.QnAVo;

/**
 * Servlet implementation class QnAServlet
 */
@WebServlet("/qna")
public class QnAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public QnAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		HttpSession session = request.getSession(); 
		
		ArrayList<QnAVo> qnaList = new QnAService().selectQnAList();
		
		if(!qnaList.isEmpty()) {
			request.setAttribute("qnaList", qnaList);
			String url = "index.jsp?inc=view/qna/";
			RequestDispatcher view = request.getRequestDispatcher(url + "qna.jsp");
			view.forward(request, response);
			System.out.println(qnaList);
		} else {
			response.sendRedirect("");
		}	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
