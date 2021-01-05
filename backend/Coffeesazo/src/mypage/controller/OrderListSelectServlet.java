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
import mypage.model.service.OrderService;
import mypage.model.vo.OrderViewList;

/**
 * Servlet implementation class OrderListSelectServlet
 */
@WebServlet("/OrderListSelect")
public class OrderListSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderListSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String memberid = ((String)session.getAttribute("id"));
		ArrayList<OrderViewList> odList = new OrderService().SelectOrderList(memberid);
	
		int allresult = 0;

		for(OrderViewList odlist : odList) {
	    int price = odlist.getProductPrice();
	    int count = odlist.getOrderCount();
	    allresult += price * count;
	    }

		System.out.println(allresult);
		System.out.println(odList.size());
		if(!odList.isEmpty()) {
			request.setAttribute("odList", odList);
			request.setAttribute("allresult", allresult);
			RequestDispatcher view = request.getRequestDispatcher("view/mypage/Mypage_order.jsp");
			view.forward(request, response);
			System.out.println(odList);
		} else {
			response.sendRedirect("");
		}
	
	
	}

	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
