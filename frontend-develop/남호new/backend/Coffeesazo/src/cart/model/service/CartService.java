package cart.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;

import cart.model.dao.CartDao;
import cart.model.vo.Cart;
import common.JDBCTemplate;

public class CartService {
	ArrayList<Cart> pList = null;
    int result = 0;
	public ArrayList<Cart> SelectCartList(String memberid) {
		
	    
		try {
			
			Connection conn = new Application().getConn();//데이터베이스 창고 열쇠를 만듬
		    pList = new CartDao().SelectCartList(conn, memberid);
			JDBCTemplate.close(conn);
			} catch (Exception e) {
			e.printStackTrace();
		}
		return pList;
		
	}

	public int CheckCartDelete(int[] cpd, String memberid) {
		int result = 0;
		try {
			Connection conn = new Application().getConn();
			result = new CartDao().CheckCartDelete(conn,cpd,memberid);
			JDBCTemplate.close(conn);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

	public int CartAllDelete(String memberid) {
		int result = 0;
		try {
			Connection conn = new Application().getConn();
			result = new CartDao().CartDeleteAll(conn,memberid);
			JDBCTemplate.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
	
	
}
