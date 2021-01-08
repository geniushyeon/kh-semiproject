package com.coffeesazo.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coffeesazo.product.model.service.ProductDetailService;
import com.coffeesazo.product.model.vo.Product;


@WebServlet("/CoffeeDetail")
public class CoffeeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        

    public CoffeeDetailServlet() {
        super();

    }
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Product> coffeeList = new ProductDetailService().CoffeeDetail();
		
		
		if(!coffeeList.isEmpty()) {
			request.setAttribute("coffeeList", coffeeList);
			String url = "index.jsp?inc=view/shopping/product_deatil/";
			RequestDispatcher view = request.getRequestDispatcher(url+"Coffee_Beans1.jsp");
			view.forward(request, response);
			System.out.println(coffeeList);
		} else {
			response.sendRedirect("");
		}
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
