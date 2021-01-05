package com.coffeesazo.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.product.model.dao.ProductDetailDao;
import com.coffeesazo.product.model.vo.Product;

import common.JDBCTemplate;


public class ProductDetailService {
	
	
	ArrayList<Product> coffee = null;
	public ArrayList<Product> CoffeeDetail() {
		try {
			Connection conn = new Application().getConn();
			coffee =  new ProductDetailDao().CoffeeDetail(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return coffee;
	}
}
