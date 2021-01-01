package cart.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cart.model.vo.Cart;
import common.JDBCTemplate;

public class CartDao {

	public ArrayList<Cart> selectCartList(Connection conn, String memberid) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Cart> pList = null;
		
		String sql = " SELECT p.product_index,  p.product_image,  p.product_name, p.product_price, c.order_count FROM cs_member m INNER JOIN cs_cart c ON m.member_id = c.fk_member_id INNER JOIN cs_product p ON c.fk_product_index = p.product_index WHERE m.member_id = ? " ;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();
			pList = new ArrayList<Cart>();
			while(rs.next()) {
				Cart cart = new Cart();
				cart.setProductIndex(rs.getInt("product_index"));
				cart.setProductImage(rs.getString("product_image"));
				cart.setProductName(rs.getString("product_name"));
				cart.setProductPrice(rs.getInt("product_price"));
				cart.setOrderCount(rs.getInt("order_count"));
				
				
				pList.add(cart);
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		
		return pList;
	}

}
