package com.coffeesazo.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coffeesazo.product.model.service.ProductService;
import com.coffeesazo.product.model.vo.Product;

@WebServlet("/stickcoffee")
public class StickSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public StickSelectServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Product> stickList = new ProductService().StickSelete();
	
		if(!stickList.isEmpty()) {
			request.setAttribute("stickList", stickList);
			RequestDispatcher view = request.getRequestDispatcher("view/shopping/product/stick_coffee.jsp");
			view.forward(request, response);
			System.out.println(stickList);
		} else {
			response.sendRedirect("");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
