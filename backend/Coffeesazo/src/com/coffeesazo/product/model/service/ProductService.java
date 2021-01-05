package com.coffeesazo.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.product.model.dao.ProductDao;
import com.coffeesazo.product.model.vo.Product;

import common.JDBCTemplate;


public class ProductService {
	
	//���� //
	public ArrayList<Product> WholeSelete() {
		ArrayList<Product> beanList = null;
		try {
			Connection conn = new Application().getConn();
			beanList =  new ProductDao().WholeSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return beanList;
	}
	
	
	//��ƽĿ��//
	
	public ArrayList<Product> StickSelete() {
		ArrayList<Product> stickList = null;
		try {
			Connection conn = new Application().getConn();
			stickList =  new ProductDao().StickSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return stickList;
	}

	

	//ĸ��Ŀ��//
	
	public ArrayList<Product> CapsuleSelete() {
		ArrayList<Product> capList = null;
		try {
			Connection conn = new Application().getConn();
			capList =  new ProductDao().CapsuleSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {

		}
		
		return capList;
	}
}
