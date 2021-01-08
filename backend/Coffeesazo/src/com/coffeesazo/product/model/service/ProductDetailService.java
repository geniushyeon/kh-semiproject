package com.coffeesazo.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.product.model.dao.ProductDetailDao;
import com.coffeesazo.product.model.vo.Product;

import common.JDBCTemplate;


public class ProductDetailService {
	
	
	public ArrayList<Product> CoffeeDetail() {
	ArrayList<Product> coffeeList = null;
		try {
			Connection conn = new Application().getConn();
			coffeeList =  new ProductDetailDao().CoffeeDetail(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return coffeeList;
	}
}
