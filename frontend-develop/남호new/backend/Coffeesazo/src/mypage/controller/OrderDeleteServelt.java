package mypage.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mypage.model.service.OrderService;

/**
 * Servlet implementation class CartDeleteServlet
 */
@WebServlet("/deleteorder")
public class OrderDeleteServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderDeleteServelt() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String memberid = ((String)session.getAttribute("id"));
		String[] checkproduct = request.getParameterValues("delete-name");
		int[] cpd = new int[checkproduct.length];
		for(int i=0; i<cpd.length ; i++) {
			cpd[i] = Integer.parseInt(checkproduct[i]);
		}
			int result = new OrderService().OrderDelete(cpd,memberid);
			System.out.println("선택삭제 값:"+result);
			if(result != 0) {
				RequestDispatcher view = request.getRequestDispatcher("view/order/shopping_cart.jsp");
				view.forward(request, response);
			}else {
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
