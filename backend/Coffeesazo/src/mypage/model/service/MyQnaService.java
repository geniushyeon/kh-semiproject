package mypage.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.Application;
import com.coffeesazo.Page;
import com.coffeesazo.notice.model.dao.NoticeDao;
import com.coffeesazo.notice.model.vo.NoticeVo;

import common.JDBCTemplate;
import mypage.model.dao.MyQnaListDao;
import mypage.model.vo.MyQnaList;

public class MyQnaService {
	

	public List<MyQnaList> selectQnaPageList(Page page) {
		List<MyQnaList> qnaList = null;
		
		
		try {
			Connection conn = new Application().getConn();
			qnaList =  new MyQnaListDao().selectQnaPageList(conn, page);
			JDBCTemplate.close(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return qnaList;
	}

	


	
	public ArrayList<MyQnaList> SelectQnaList(String memberid) {
		ArrayList<MyQnaList> qnaList = null;
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
