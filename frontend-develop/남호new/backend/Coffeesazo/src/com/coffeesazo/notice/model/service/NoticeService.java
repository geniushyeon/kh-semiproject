package com.coffeesazo.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;


import com.coffeesazo.Application;
import com.coffeesazo.notice.model.dao.NoticeDao;
import com.coffeesazo.notice.model.vo.NoticeVo;

import common.JDBCTemplate;


public class NoticeService {

	public ArrayList<NoticeVo> selectNoticeList() {
		ArrayList<NoticeVo> noticeList = null;

		try {
			Connection conn = new Application().getConn();
			noticeList =  new NoticeDao().selectNoticeList(conn);
			JDBCTemplate.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return noticeList;
	}


	public NoticeVo selectNoticeDetailList(int noticeIndex) {
		NoticeVo noticevo = null;

		try {
			Connection conn = new Application().getConn();
			noticevo =  new NoticeDao().selectNoticeDetailList(conn,noticeIndex);
			JDBCTemplate.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return noticevo;
	}
}

