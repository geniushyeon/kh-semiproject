package com.coffeesazo.order.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.coffeesazo.order.model.vo.OrderVo;

public class OrderDao {

	public List<OrderVo> selectOrderList(String memberId) {		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<OrderVo> orderList = null;

		try {
			String sql = "SELECT ";
		} catch(Exception e) {
			e.printStackTrace();

		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return orderList;
	}

}
