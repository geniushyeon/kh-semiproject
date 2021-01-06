package mypage.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import com.coffeesazo.Application;
import mypage.model.dao.OrderListDao;
import mypage.model.vo.OrderViewList;
import common.JDBCTemplate;

public class OrderService {
	ArrayList<OrderViewList> odList = null;
    int result = 0;
	public ArrayList<OrderViewList> SelectOrderList(String memberid) {
		
	    
		try {
			
			Connection conn = new Application().getConn();//데이터베이스 창고 열쇠를 만듬
			odList = new OrderListDao().SelectOrderList(conn, memberid);
			JDBCTemplate.close(conn);
			} catch (Exception e) {
			e.printStackTrace();
		}
		return odList;
		
	}

	public int OrderDelete(int[] cpd, String memberid) {
		int result = 0;
		try {
			Connection conn = new Application().getConn();
			result = new OrderListDao().CheckCartDelete(conn,cpd,memberid);
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
			result = new OrderListDao().CartDeleteAll(conn,memberid);
			JDBCTemplate.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
	
	
}
