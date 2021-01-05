package com.coffeesazo.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.Application;
import com.coffeesazo.notice.model.vo.NoticeVo;

public class NoticeDaoTemp {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public NoticeDaoTemp() {
		conn = new Application().getConn();
	}


	public List<NoticeVo> selectNoticeDetail(int noticeIndex) {
		List<NoticeVo> list = new ArrayList<>();

		try {
			String sql = "SELECT * FROM cs_notice WHERE notice_index = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeIndex); // 사용자가 선택한 공지 인덱스 번호 
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				NoticeVo noticeVo = new NoticeVo();
				noticeVo.setNoticeIndex(rs.getInt("notice_index"));
				noticeVo.setNoticeTitle(rs.getString("notice_title"));
				noticeVo.setNoticeText(rs.getString("notice_text"));
				noticeVo.setNoticeDate(rs.getDate("notice_date"));
				noticeVo.setNoticeFile(rs.getString("notice_file"));
				
				list.add(noticeVo);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
