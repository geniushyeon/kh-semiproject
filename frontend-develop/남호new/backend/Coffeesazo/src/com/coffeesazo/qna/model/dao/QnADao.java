package com.coffeesazo.qna.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.qna.vo.QnAVo;

import common.JDBCTemplate;

public class QnADao {

	public ArrayList<QnAVo> selectQnAList(Connection conn) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<QnAVo> qnaList = null;

		String sql  = "SELECT * FROM cs_qna ORDER BY qna_index DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			qnaList = new ArrayList<QnAVo>();

			while(rs.next()) {
				QnAVo qnavo = new QnAVo(); 
				qnavo.setQnaIndex(rs.getInt("qna_index"));
				qnavo.setQnaTitle(rs.getString("qna_title"));
				qnavo.setQnaDate(rs.getDate("qna_date"));
				qnavo.setFkMemberId(rs.getString("fk_member_id"));

				qnaList.add(qnavo);

			}			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);	
		}
		return qnaList;
	}

}
