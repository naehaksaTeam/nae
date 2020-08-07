package absence.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import absence.model.vo.Absence;
import static common.JDBCTemp.*;

public class AbsenceDao {
	public AbsenceDao() {};
	
	public ArrayList<Absence> selectAbsence(Connection conn) {
		ArrayList<Absence> list = new ArrayList<Absence>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from absence";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Absence ab = new Absence(rset.getString("requestid"), rset.getString("studentid"),rset.getDate("requestdate"), rset.getDate("limitcancledate"), rset.getString("information"), rset.getString("approval"));
				
				list.add(ab);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(stmt);
		return list;
	};
	
	public Absence selectOneAbsence(Connection conn, String requestid) {
		Absence absence =null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from absence where requestid = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, requestid);
			rset = pstmt.executeQuery();

			if(rset.next()) {
				absence = new Absence(rset.getString("requestid"), rset.getString("studentid"),rset.getDate("requestdate"), rset.getDate("limitcancledate"), rset.getString("information"), rset.getString("approval"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(pstmt);
		return absence;
	};
	
	
	public ArrayList<Absence> selectPrivateAbsence(Connection conn, String studentid) {
		ArrayList<Absence> list = new ArrayList<Absence>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from absence";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, studentid);
			
			
			while(rset.next()) {
				Absence ab = new Absence(rset.getString("requestid"), rset.getString("studentid"),rset.getDate("requestdate"), rset.getDate("limitcancledate"), rset.getString("information"), rset.getString("approval"));
				
				list.add(ab);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(pstmt);
		return list;
	};
	
	

	public int insertAbsence(Connection conn, String value, String studentid) {
		int result = 0;
		
		String query = "insert into absence values(?+(select max(requestid)))";
		
		return result;
	};
	
	//승인하면 approval 이 Y로 바뀌고 학생테이블의 휴학웨더값을 바꾸어줌
	//휴학이 휴학신청, 휴학이 복학신청, 재학이 휴학신청
	public int updateAbsence(Connection conn, String requestid) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update absence set approval = 'Y' where requestid = ?"; 
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, requestid);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	};
	
	public int deleteAbsence(Connection conn, String requestid) {
		int result = 0; // 신청취소가 되면 승인여부고려해서 학생테이블의 휴학웨더 바꾸어준다.
		PreparedStatement pstmt = null;
		
		String query = "delete from absence where requestid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, requestid);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}

	public ArrayList<Absence> selectApprovalAbsence(Connection conn, String able) {
		ArrayList<Absence> list = new ArrayList<Absence>(); //승인된 아이들만 조회 able이 Y로 옴
		
		return list;
	}

	public ArrayList<Absence> selectDeappAbsence(Connection conn, String able) {
		ArrayList<Absence> list = new ArrayList<Absence>(); // 미승인된 아이들만 조회. able이 N으로 옴
		
		return list;
	};
}
