package mypage.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.coffeesazo.Page;
import common.JDBCTemplate;
import mypage.model.vo.MyQnaList;



public class MyQnaListDao {
	
	
	public int getTotalListSize(Connection conn, String findStr) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totalListSize = 0;

		try {
			String sql = "SELECT COUNT(*) cnt FROM CS_QNA WHERE QNA_TITLE LIKE ? ";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + findStr + "%");

			rs = pstmt.executeQuery();

			while(rs.next()) {
				totalListSize = rs.getInt("cnt");						
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}

		return totalListSize;

	}
	
	
	
	
	
	public List<MyQnaList> selectQnaPageList(Connection conn, Page page) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;	
		List<MyQnaList> qnaList = null;

		try {

			qnaList = new ArrayList<MyQnaList>();
			String findStr = page.getFindStr();
			page.setTotalListSize(getTotalListSize(conn, findStr));
			page.pageCompute();

			String sql = "SELECT * FROM ("
					+ "SELECT ROWNUM no, n.* FROM ("
					+ "SELECT * FROM cs_notice WHERE notice_title LIKE ? "
					+ "ORDER BY notice_index DESC) n"
					+ " ) WHERE no BETWEEN ? AND ?";


			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + findStr + "%");
			pstmt.setInt(2, page.getStartNo());
			pstmt.setInt(3, page.getEndNo());
//			System.out.println(page.getStartNo());
//			System.out.println(page.getEndNo());
			rs = pstmt.executeQuery();

			while(rs.next()) {
				MyQnaList myqnaList = new MyQnaList();
				myqnaList.setQnaIndex(rs.getInt("notice_index"));
				myqnaList.setQnaTitle(rs.getString("notice_title"));
				myqnaList.setWriteDate(rs.getDate("notice_date"));

				qnaList.add(myqnaList);		
			}		
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);	
		}
		return qnaList;
	}

	
	
	

	public ArrayList<MyQnaList> SelectQnaList(Connection conn, String memberid) {
		PreparedStatement pstmt = null;// 쿼리문을 담는 박스
		ResultSet rs = null;//결과값을 다루는 아이
		ArrayList<MyQnaList> qnaList = null;
		String sql ="SELECT * FROM cs_member c INNER JOIN cs_qna q ON c.member_id = q.fk_member_id  WHERE c.member_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();
			qnaList = new ArrayList<MyQnaList>();
		
			while(rs.next()) {
				MyQnaList myqnaList = new MyQnaList();
				myqnaList.setUserId(rs.getString("fk_member_id"));
				myqnaList.setQnaTitle(rs.getString("qna_title"));
				myqnaList.setUserId(rs.getString("QNA_CHECK"));
				myqnaList.setQnaIndex(rs.getInt("qna_index"));
				myqnaList.setWriteDate(rs.getDate("qna_date"));
				
				qnaList.add(myqnaList);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rs);
		}
		//
		return qnaList;
	}

	

	

	
	

}
