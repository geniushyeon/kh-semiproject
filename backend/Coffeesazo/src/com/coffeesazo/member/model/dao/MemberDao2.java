package com.coffeesazo.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.coffeesazo.Application;
import com.coffeesazo.member.model.vo.MemberVo;

public class MemberDao2 {
	Connection conn; // db의 연결 정보 
	PreparedStatement pstmt; // 문자열로 되어 있는 sql 문장을 실행 
	ResultSet rs; // select문의 실행 결과 
	
	public MemberDao2() {
		conn = new Application().getConn();
		
	}
	
	public int signin(String id, String pwd) {
		MemberVo member = new MemberVo();
				
		try {
			String sql = "select * from cs_member where MEMBER_ID=? and MEMBER_PWD=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {

				
				 member = new MemberVo(); 
				 member.setMemberId(rs.getString("member_id"));
				 member.setMemberPwd(rs.getString("member_pwd"));
				 
				return 0;
			}
			else
				return 1 ;
		}
		
		catch (Exception e) {

			System.out.println(e.toString());
			return -1;
			
		}
	}

	public int findid(String name, String email) {
		MemberVo member = new MemberVo();
		
		try {
			String sql = "select member_id from cs_member where MEMBER_NAME=? and MEMBER_EMAIL=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {

				
				 member = new MemberVo(); 
				 
				 member.setMemberId(rs.getString(1));
				 //member.setMemberName(rs.getString(2));
				 //member.setMemberEmail(rs.getString(3));
				 
				return 0;
			}
			else
				return 1 ;
		}
		
		catch (Exception e) {

			System.out.println(e.toString());
			return -1;
			
		}
	}

}
