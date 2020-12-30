package com.coffeesazo.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.coffeesazo.Application;
import com.coffeesazo.member.model.vo.MemberVo;

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
					+ "?, ?, ?, ?, ?, ?, ?, DEFAULT, DEFAULT)";
			
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

	public int idDuplicatedCheck(String memberId) {
		int result = 0;
		try {
			String sql = "SELECT COUNT(*) FROM cs_member WHERE member_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
			System.out.println(result);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
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
			String sql = "select * from cs_member where MEMBER_NAME=? and MEMBER_EMAIL=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {

				
				 member = new MemberVo(); 
				 
				 member.setMemberId(rs.getString("member_id"));
				 member.setMemberName(rs.getString("member_name"));
				 member.setMemberEmail(rs.getString("member_email"));
				 
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
