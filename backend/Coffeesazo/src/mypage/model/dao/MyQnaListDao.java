package mypage.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.JDBCTemplate;
import mypage.model.vo.MyQnaList;


public class MyQnaListDao {

	public ArrayList<MyQnaList> SelectQnaList(Connection conn, String memberid) {
		PreparedStatement pstmt = null;// 쿼리문을 담는 박스
		ResultSet rs = null;//결과값을 다루는 아이
		ArrayList<MyQnaList> qnaList = null;
		String sql ="SELECT * FROM cs_member c INNER JOIN cs_qna q ON c.member_id = q.fk_member_id  WHERE c.member_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();
			qnaList = new ArrayList<MyQnaList>();
		
			while(rs.next()) {
				MyQnaList myqnaList = new MyQnaList();
				myqnaList.setUserId(rs.getString("fk_member_id"));
				myqnaList.setQnaTitle(rs.getString("qna_title"));
				myqnaList.setUserId(rs.getString("QNA_CHECK"));
				myqnaList.setQnaIndex(rs.getInt("qna_index"));
				myqnaList.setWriteDate(rs.getDate("qna_date"));
				
				qnaList.add(myqnaList);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		//
		return qnaList;
	}


}
