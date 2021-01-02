package cart.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;

import cart.model.dao.CartDao;
import cart.model.vo.Cart;
import common.JDBCTemplate;

public class CartService {
	ArrayList<Cart> pList = null;

	public ArrayList<Cart> selectCartList(String memberid) {
		
	    
		try {
			
			Connection conn = new Application().getConn();//데이터베이스 창고 열쇠를 만듬
		    pList = new CartDao().selectCartList(conn, memberid);
			JDBCTemplate.close(conn);
			} catch (Exception e) {
			e.printStackTrace();
		}
		return pList;
		
	}
	
	
}
