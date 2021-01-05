package com.coffeesazo.notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.Application;
import com.coffeesazo.notice.model.vo.NoticeVo;

import common.JDBCTemplate;

public class NoticeDao {

	public ArrayList<NoticeVo> selectNoticeList(Connection conn) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;	
		ArrayList<NoticeVo> noticeList = null;

		String sql = "SELECT * FROM cs_notice ORDER BY notice_index DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			noticeList = new ArrayList<NoticeVo>();

			while(rs.next()) {
				NoticeVo noticevo = new NoticeVo();
				noticevo.setNoticeIndex(rs.getInt("notice_index"));
				noticevo.setNoticeTitle(rs.getString("notice_title"));
				noticevo.setNoticeDate(rs.getDate("notice_date"));

				noticeList.add(noticevo);		
			}		
		} catch (Exception e){

		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);	
		}
		return noticeList;
	}
}
