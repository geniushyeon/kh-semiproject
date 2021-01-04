package com.coffeesazo.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coffeesazo.product.model.service.Product_datilService;
import com.coffeesazo.product.model.vo.Product;


@WebServlet("/coffee_datil")
public class coffee_datilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        

    public coffee_datilServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Product> List = new Product_datilService().coffee_datil();
		
		
		if(!List.isEmpty()) {
			request.setAttribute("capList", List);
			RequestDispatcher view = request.getRequestDispatcher("view/shopping/product/capsule_coffee.jsp");
			view.forward(request, response);
			System.out.println(List);
		} else {
			response.sendRedirect("");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
