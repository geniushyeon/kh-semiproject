package com.coffeesazo.qna.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.Application;
import com.coffeesazo.member.model.vo.MemberVo;
import com.coffeesazo.qna.model.vo.QnAVo;

import common.JDBCTemplate;

public class QnADao {
	
	
	Connection conn; // db의 연결 정보 
	PreparedStatement pstmt; // 문자열로 되어 있는 sql 문장을 실행 
	ResultSet rs; // select문의 실행 결과 

	public QnADao() {
		conn = new Application().getConn();

	}

	
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

	
	public int updateqna( String id, String qnaTitle, String qnaText, String qnaImage) {


		try {
			String sql  = "INSERT INTO CS_QNA VALUES(seq_qna_index.nextval, ?, ?, SYSDATE, ?, ?, default)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, qnaTitle);
			pstmt.setString(3, qnaText);
			pstmt.setString(4, qnaImage);
			

			int row = pstmt.executeUpdate();

			if(row ==1) {

				return 1;
			}
			else
				return 0 ;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public String[] viewqna(int index, String memberid) {
		String title =null;
		String text = null;
		String image = null;


		try {
			String sql  = "select QNA_TITLE, QNA_TEXT, QNA_IMAGE from CS_QNA where QNA_INDEX=? AND FK_MEMBER_ID=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, index);
			pstmt.setString(2, memberid);

			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				title = rs.getString("QNA_TITLE");
				text = rs.getString("QNA_TEXT");
				image = rs.getString("QNA_IMAGE");
				
				if(image == null) {
					image = "첨부파일 없음";
				}
				String[] view = {title, text, image};
				
				return view;
			}
			else
				return null ;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public int modifyqna(int index, String memberid, String qnaTitle, String qnaText, String qnaImage) {

		try {
			String sql  = "UPDATE CS_QNA SET QNA_TITLE =? , QNA_TEXT =?, QNA_IMAGE =? WHERE QNA_INDEX=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, qnaTitle);
			pstmt.setString(2, qnaText);
			pstmt.setString(3, qnaImage);
			pstmt.setInt(4, index);
			

			int row = pstmt.executeUpdate();

			if(row ==1) {

				return 1;
			}
			else
				return 0 ;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}

	public int deleteqna(int index) {

		try {
			String sql  = "DELETE cs_qna WHERE qna_index = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, index);


			int row = pstmt.executeUpdate();

			if(row ==1) {

				return 1;
			}
			else
				return 0 ;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;

	}

	
}
