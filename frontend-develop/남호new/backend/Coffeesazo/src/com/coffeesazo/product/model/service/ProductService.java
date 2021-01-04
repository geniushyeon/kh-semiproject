package com.coffeesazo.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.product.model.dao.ProductDao;
import com.coffeesazo.product.model.vo.Product;

import common.JDBCTemplate;


public class ProductService {
	
	//¿øµÎ //
	ArrayList<Product> beanList = null;
	public ArrayList<Product> WholeSelete() {
		try {
			Connection conn = new Application().getConn();
			beanList =  new ProductDao().WholeSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return beanList;
	}
	
	
	//½ºÆ½Ä¿ÇÇ//
	
	ArrayList<Product> stickList = null;
	public ArrayList<Product> StickSelete() {
		try {
			Connection conn = new Application().getConn();
			stickList =  new ProductDao().StickSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return stickList;
	}

	

	//Ä¸½¶Ä¿ÇÇ//
	
	ArrayList<Product> capList = null;
	public ArrayList<Product> CapsuleSelete() {
		try {
			Connection conn = new Application().getConn();
			capList =  new ProductDao().CapsuleSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return capList;
	}
}
