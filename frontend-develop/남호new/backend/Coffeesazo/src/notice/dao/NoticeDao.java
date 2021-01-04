package notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.coffeesazo.Application;

public class NoticeDao {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public NoticeDao() {
		conn = new Application().getConn();
	}
	
}
