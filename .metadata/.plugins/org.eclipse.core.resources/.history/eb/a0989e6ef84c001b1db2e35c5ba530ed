package product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;

import common.JDBCTemplate;
import product.model.dao.ProductDao;
import product.model.vo.Product;


public class ProductService {
	ArrayList<Product> capList = null;
	public ArrayList<Product> CapsuleSelete() {
		try {
			Connection conn = new Application().getConn();
			capList =  new ProductDao().CapsuleSelect(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return capList;
	}

}
