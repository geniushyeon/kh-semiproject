package cart.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cart.model.vo.Cart;
import common.JDBCTemplate;

public class CartDao {

	public ArrayList<Cart> SelectCartList(Connection conn, String memberid) {
		
		PreparedStatement pstmt = null;// 쿼리문을 담는 박스
		ResultSet rs = null;//결과값을 다루는 아이
		ArrayList<Cart> pList = null;
		
		String sql = " SELECT p.product_index,  p.product_image,  p.product_name, p.product_price, c.order_count FROM cs_member m INNER JOIN cs_cart c ON m.member_id = c.fk_member_id INNER JOIN cs_product p ON c.fk_product_index = p.product_index WHERE m.member_id = ? " ;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);//setString(물음표위치, 넣어줄값)
			rs = pstmt.executeQuery();
			pList = new ArrayList<Cart>();
			
			while(rs.next()) {
				Cart cart = new Cart();
				cart.setProductIndex(rs.getInt("product_index"));
				cart.setProductImage(rs.getString("product_image"));
				cart.setProductName(rs.getString("product_name"));
				cart.setProductPrice(rs.getInt("product_price"));
				cart.setOrderCount(rs.getInt("order_count"));
				
				//첫번째vo가 꽉참
				
				pList.add(cart);
				//Cart객채를 0~6번인덱스로 만듬
			}
				
				
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		
		return pList;
	}

	public int CheckCartDelete(Connection conn, int[] cpd, String memberid) {
		PreparedStatement pstmt = null;// 쿼리문을 담는 박스
		ResultSet rs = null;//결과값을 다루는 아이
		
		int result = 0;
		String params = "";
		for(int i=0; i<cpd.length; i++) {
			params += cpd[i];
			if(i <cpd.length-1) {
				params += ",";
			}
		}
		System.out.println(params);
		System.out.println(memberid);
		String sql = "DELETE FROM cs_cart WHERE fk_member_id = ? AND fk_product_index IN ("+params+")";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		return result;
	}

	public int CartDeleteAll(Connection conn, String memberid) {
		PreparedStatement pstmt = null;// 쿼리문을 담는 박스
		ResultSet rs = null;//결과값을 다루는 아이
		int result = 0;
		String sql = "DELETE FROM cs_cart WHERE fk_member_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		return result;
	}

}
