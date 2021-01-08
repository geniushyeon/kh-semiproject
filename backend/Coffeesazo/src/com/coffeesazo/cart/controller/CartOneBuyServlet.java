package com.coffeesazo.cart.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coffeesazo.cart.model.service.CartService;
import com.coffeesazo.cart.model.vo.Cart;
import com.coffeesazo.cart.model.vo.OrderIndex;

/**
 * Servlet implementation class CartAddOneServlet
 */
@WebServlet("/cartaddone")
public class CartOneBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartOneBuyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//장바구니 버튼과 바로구매버튼 여기다가만듬
		int click = 0;
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	HttpSession session = request.getSession();
	String memberid = ((String)session.getAttribute("id"));

	switch (click) {
	//장바구니추가
	case 1:
		String pi = request.getParameter("product_index");
		int productIndex= Integer.parseInt(pi);
		String productImage = request.getParameter("product_image");
		String productName = request.getParameter("product_name");
		String pp = request.getParameter("product_price");
	    int productPrice = Integer.parseInt(pp);
		String oc = request.getParameter("order_count");
		int orderCount = Integer.parseInt(oc);
		
		Cart cart = new Cart();
		cart.setOrderCount(orderCount);
		cart.setProductImage(productImage);
		cart.setProductIndex(productIndex);
		cart.setProductName(productName);
		cart.setProductPrice(productPrice);
		
	    int addcart = new CartService().CartAddOne(memberid,cart);
	
	        
		
		
		break;
		//바로구매
	case 2:
		String pi2 = request.getParameter("product_index");
		int productIndex2= Integer.parseInt(pi2);
		String productImage2 = request.getParameter("product_image");
		String productName2 = request.getParameter("product_name");
		String pp2 = request.getParameter("product_price");
	    int productPrice2 = Integer.parseInt(pp2);
		String oc2 = request.getParameter("order_count");
		int orderCount2 = Integer.parseInt(oc2);
		
		Cart cart2 = new Cart();
		cart2.setOrderCount(orderCount2);
		cart2.setProductImage(productImage2);
		cart2.setProductIndex(productIndex2);
		cart2.setProductName(productName2);
		cart2.setProductPrice(productPrice2);
		
	    int addcart2 = new CartService().CartAddOne(memberid,cart2);
	    ArrayList<Cart> pList = new CartService().SelectCartList(memberid);
		int allresult = 0;
		for(Cart plist : pList) {
		    int price = plist.getProductPrice();
		    int count = plist.getOrderCount();
		    allresult += price * count;
		    }
		Cart lastElement = null;
		if(!pList.isEmpty()) {
			lastElement = pList.get(pList.size() - 1);
		}
		if(!pList.isEmpty()) {
			request.setAttribute("lastElement", lastElement);
			request.setAttribute("allresult", allresult);
			String url = "index.jsp?inc=view/order/";
			RequestDispatcher view = request.getRequestDispatcher(url + "shopping_payment_buyitnow.jsp");
			view.forward(request, response);
			System.out.println(pList);
			
			
		} else {
			response.sendRedirect("");
		}
	    

	default:
		break;
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
