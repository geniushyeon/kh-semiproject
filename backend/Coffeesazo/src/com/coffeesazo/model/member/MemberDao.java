package com.coffeesazo.model.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.coffeesazo.Application;

public class MemberDao {
	Connection conn; // db의 연결 정보 
	PreparedStatement pstmt; // 문자열로 되어 있는 sql 문장을 실행 
	ResultSet rs; // select문의 실행 결과 
	
	public MemberDao() {
		conn = new Application().getConn();
		
	}
	
	public int signup(MemberVo memberVo) {
		int affectedRows = 0;
		
		try {
			String sql = "INSERT INTO cs_member VALUES("
					+ "seq_member_index.nextval,"
					+ "?, ?, ?, ?, ?, ?, ?, DEFAULT)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberVo.getMemberId());
			pstmt.setString(2, memberVo.getMemberPwd());
			pstmt.setString(3, memberVo.getMemberName());
			pstmt.setString(4, memberVo.getMemberEmail());
			pstmt.setString(5, memberVo.getMemberPhone());
			pstmt.setString(6, memberVo.getMemberZipcode());
			pstmt.setString(7, memberVo.getMemberAddress());
			
			affectedRows = pstmt.executeUpdate();
			System.out.println(affectedRows); // 디버깅용 
			
			if(affectedRows < 1) {
				System.out.println("회원가입 실패");
			} else {
				return affectedRows;
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
		
		return affectedRows;
		
	}
	
}
