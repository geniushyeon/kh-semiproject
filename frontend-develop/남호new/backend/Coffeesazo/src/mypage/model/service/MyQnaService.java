package mypage.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.coffeesazo.Application;

import common.JDBCTemplate;
import mypage.model.dao.MyQnaListDao;
import mypage.model.vo.MyQnaList;

public class MyQnaService {
	ArrayList<MyQnaList> qnaList = null;
	public ArrayList<MyQnaList> SelectQnaList(String memberid) {
		try {
			
			Connection conn = new Application().getConn();
			qnaList = new MyQnaListDao().SelectQnaList(conn, memberid);
			JDBCTemplate.close(conn);
			} catch (Exception e) {
			e.printStackTrace();
		}
		return qnaList;
		
	}
}
