package mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mypage.model.service.MyQnaService;
import mypage.model.vo.MyQnaList;

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
        response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession(); 
		String memberid = ((String)session.getAttribute("id"));
		ArrayList<MyQnaList> qnaList = new MyQnaService().SelectQnaList(memberid);
		request.setAttribute("qnaList", qnaList);
		if(!qnaList.isEmpty()) {
			request.setAttribute("qnaList", qnaList);
			RequestDispatcher view = request.getRequestDispatcher("index.jsp?inc=view/mypage/Mypage_qna.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("");
		}	
	}

}



