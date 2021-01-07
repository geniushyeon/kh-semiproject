package mypage.model.service;

import java.sql.Connection;
import java.util.List;

import com.coffeesazo.Application;

import common.JDBCTemplate;
import mypage.model.dao.OrderDetailDao;
import mypage.model.vo.OrderDetailListVo;

public class OrderDetailService {

	public List<OrderDetailListVo> selectOrderDetailList(String memberId, int orderIndex) {
		List<OrderDetailListVo> orderDetailList = null;
		try {

			Connection conn = new Application().getConn();
			orderDetailList = new OrderDetailDao().selectOrderDetailList(conn, memberId, orderIndex);
			JDBCTemplate.close(conn);

		}  catch(Exception e) {
			e.printStackTrace();
		}

		return orderDetailList;
	}

	public int deleteOrderDetailList(String memberId, int orderIndex) {
		int affectedRows = 0;
		
		try {
			Connection conn = new Application().getConn();
			affectedRows = new OrderDetailDao().deleteOrderDetailList(conn, memberId, orderIndex);
			JDBCTemplate.close(conn);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return affectedRows;
	}
} 
