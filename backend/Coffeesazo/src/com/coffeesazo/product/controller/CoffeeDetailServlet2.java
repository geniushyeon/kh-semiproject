package com.coffeesazo.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coffeesazo.product.model.service.ProductDetailService2;
import com.coffeesazo.product.model.vo.Product;


@WebServlet("/beandetail")
public class CoffeeDetailServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
        

    public CoffeeDetailServlet2() {
        super();

    }
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Product> coffeeList = new ProductDetailService2().CoffeeDetail();
		
		
		if(!coffeeList.isEmpty()) {
			request.setAttribute("coffeeList", coffeeList);
			String url = "index.jsp?inc=view/shopping/product_detail/";
			RequestDispatcher view = request.getRequestDispatcher(url+"bean_detail.jsp");
			view.forward(request, response);
			
		} else {
			response.sendRedirect("");
		}
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
