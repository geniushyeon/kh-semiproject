package com.coffeesazo.qna.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.Application;
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

	public int modifyqna(String id, String qnaTitle, String qnaText, String qnaImage) {


		try {
			String sql  = "UPDATE cs_qna SET qna_title = ?, qna_text =?, qna_image =? WHERE fk_member_id = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, qnaTitle);
			pstmt.setString(2, qnaText);
			pstmt.setString(3, qnaImage);
			pstmt.setString(4, id);


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

	public int checkqna(int qnaIndex) {

		rs = null;

		try {

			String sql = "SELECT * FROM cs_qna WHERE qna_index = ? "; 

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, qnaIndex);

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

	public int deleteqna(int qnaIndex) {


		try {
			String sql  = "DELETE cs_qna WHERE qna_index = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, qnaIndex);


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

	/*
	 * public ArrayList<QnAVo> modifyQnAList(Connection conn, String memberid) {
	 * 
	 * PreparedStatement pstmt = null; ResultSet rs = null; ArrayList<QnAVo>
	 * qnaModifyList = null; String message = null;
	 * 
	 * QnAVo qnavo = new QnAVo();
	 * 
	 * try { String sql =
	 * "UPDATE cs_qna SET qna_title = ?, qna_text =?, qna_image =?"; pstmt =
	 * conn.prepareStatement(sql);
	 * 
	 * pstmt.setString(1, qnavo.getQnaTitle()); pstmt.setString(2,
	 * qnavo.getQnaText()); pstmt.setString(3, qnavo.getQnaImage());
	 * 
	 * qnaModifyList = new ArrayList<QnAVo>();
	 * 
	 * while(rs.next()) { qnavo.setQnaTitle(rs.getString("qna_title"));
	 * qnavo.setQnaText(rs.getString("qna_text"));
	 * qnavo.setQnaImage(rs.getString("qna_image"));
	 * 
	 * int rowCount = 0; rowCount= pstmt.executeUpdate(); if(rowCount<1) { message =
	 * "글 수정 중 오류가 발생하였습니다."; throw new Exception(message); } } } catch (Exception
	 * e) { message = e.getMessage();
	 * 
	 * } finally { JDBCTemplate.close(pstmt); JDBCTemplate.close(rs); } return
	 * qnaModifyList; }
	 */

	/*
	 * public ArrayList<QnAVo> deleteQnAList(Connection conn, String memberid) {
	 * 
	 * PreparedStatement pstmt = null; ResultSet rs = null; ArrayList<QnAVo>
	 * qnaDeleteList = null; String message = null;
	 * 
	 * QnAVo qnavo = new QnAVo();
	 * 
	 * try { String sql =
	 * "DELETE FROM cs_qna WHERE qna_title = ?, qna_text =?, qna_image =?"; pstmt =
	 * conn.prepareStatement(sql);
	 * 
	 * pstmt.setString(1, qnavo.getQnaTitle()); pstmt.setString(2,
	 * qnavo.getQnaText()); pstmt.setString(3, qnavo.getQnaImage());
	 * 
	 * qnaDeleteList = new ArrayList<QnAVo>();
	 * 
	 * while(rs.next()) { qnavo.setQnaTitle(rs.getString("qna_title"));
	 * qnavo.setQnaText(rs.getString("qna_text"));
	 * qnavo.setQnaImage(rs.getString("qna_image"));
	 * 
	 * int rowCount = 0; rowCount= pstmt.executeUpdate(); if(rowCount<1) { message =
	 * "글 삭제 중 오류가 발생하였습니다."; throw new Exception(message); } } } catch (Exception
	 * e) { message = e.getMessage();
	 * 
	 * } finally { JDBCTemplate.close(pstmt); JDBCTemplate.close(rs); } return
	 * qnaDeleteList; }
	 */
}
