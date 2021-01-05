package com.coffeesazo.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.product.model.dao.Product_datilDao;
import com.coffeesazo.product.model.vo.Product;

import common.JDBCTemplate;


public class ProductDetailService {
	
	
	ArrayList<Product> coffee = null;
	public ArrayList<Product> CoffeeDetail() {
		try {
			Connection conn = new Application().getConn();
			coffee =  new Product_datilDao().coffee_datil(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return coffee;
	}
}
