package com.coffeesazo.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.qna.model.dao.QnADao;
import com.coffeesazo.qna.model.vo.QnAVo;

import common.JDBCTemplate;

public class QnAService {

	public ArrayList<QnAVo> selectQnAList() {
		
		ArrayList<QnAVo> qnaList = null;

		try {
			Connection conn = new Application().getConn();
			qnaList = new QnADao().selectQnAList(conn);
			JDBCTemplate.close(conn);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return qnaList;
	}

	/*
	 * public ArrayList<QnAVo> writeQnAList(String memberid) {
	 * 
	 * ArrayList<QnAVo> qnaWriteList = null;
	 * 
	 * try { Connection conn = new Application().getConn(); qnaWriteList = new
	 * QnADao().writeQnAList(conn, memberid); JDBCTemplate.close(conn); }
	 * catch(Exception e) { e.printStackTrace(); } return qnaWriteList; }
	 */
	/*
	 * public ArrayList<QnAVo> modifyQnAList(String memberid) {
	 * 
	 * ArrayList<QnAVo> qnaModifyList = null;
	 * 
	 * try { Connection conn = new Application().getConn(); qnaModifyList = new
	 * QnADao().modifyQnAList(conn, memberid); JDBCTemplate.close(conn); }
	 * catch(Exception e) { e.printStackTrace(); } return qnaModifyList; }
	 */
	/*
	 * public ArrayList<QnAVo> deleteQnAList(String memberid) {
	 * 
	 * ArrayList<QnAVo> qnaDeleteList = null;
	 * 
	 * try { Connection conn = new Application().getConn(); qnaDeleteList = new
	 * QnADao().deleteQnAList(conn, memberid); JDBCTemplate.close(conn); }
	 * catch(Exception e) { e.printStackTrace(); } return qnaDeleteList; }
	 */
}
