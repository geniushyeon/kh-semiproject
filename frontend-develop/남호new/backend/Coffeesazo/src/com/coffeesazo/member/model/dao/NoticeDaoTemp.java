package com.coffeesazo.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coffeesazo.Application;
import com.coffeesazo.notice.model.vo.NoticeVo;

public class NoticeDaoTemp {
	
	public static void main(String[] args) {
		int[] productIndexArray = {1, 2};
		
		String sql = "INSERT ALL ";
		for (int i=0; i<productIndexArray.length; i++) {
			sql += "INTO cs_cart VALUES(seq_order_detail_index.nextval, ?, ?, ?) ";
		}
		
		sql += "SELECT * FROM dual";
		
		System.out.println(sql);
	}
}
