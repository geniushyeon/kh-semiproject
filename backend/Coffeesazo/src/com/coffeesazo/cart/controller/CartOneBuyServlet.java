package com.coffeesazo.cart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coffeesazo.cart.model.service.CartService;
import com.coffeesazo.cart.model.vo.Cart;

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
		
	case 2:

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
