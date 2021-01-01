package product.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.JDBCTemplate;
import product.model.vo.Product;

public class ProductDao {

	public ArrayList<Product> CapsuleSelect(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Product> capList = null;
		
		String sql = "SELECT * FROM cs_product p INNER JOIN cs_hashtag h ON p.fk_hastag_index = h.hashtag_index INNER JOIN cs_category ca ON h.fk_category_index = ca.category_index";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			capList = new ArrayList<Product>();
			
			while(rs.next()) {
				Product product = new Product();
				product.setProductIndex(rs.getInt("product_index"));
				product.setFkHashtagIndex(rs.getInt("fk_hastag_index"));
				product.setFkCategoryIndex(rs.getInt("fk_category_index"));
				product.setProductName(rs.getString("product_name"));
				product.setProductPrice(rs.getInt("product_price"));
				product.setProductCount(rs.getInt("product_count"));
				product.setProductImage(rs.getString("product_image"));
				product.setProductInfo(rs.getString("product_info"));
				product.setProductText(rs.getString("product_text"));
				product.setHashtagName(rs.getString("hashtag_name"));
				product.setCategoryName(rs.getString("category_name"));
				
				capList.add(product);
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		return capList;
	}

}
