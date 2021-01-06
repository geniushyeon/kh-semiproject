package com.coffeesazo.qna.mode.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;
import com.coffeesazo.qna.model.dao.QnADao;
import com.coffeesazo.qna.vo.QnAVo;

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
}
