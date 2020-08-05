package absence.model.dao;

import java.sql.Connection;
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
				Absence ab = new Absence();
				
			}
			
		} catch (Exception e) {
			
		}
		return list;
	};
	
	public Absence selectOneAbsence(Connection conn, String requestid) {
		Absence absence = new Absence();
		
		return absence;
	};
	
	
	public ArrayList<Absence> selectPrivateAbsence(Connection conn, String studentid) {
		ArrayList<Absence> list = new ArrayList<Absence>();
		
		return list;
	};
	
	

	public int insertAbsence(Connection conn, String requestid) {
		int result = 0;
		
		return result;
	};
	
	//승인하면 approval 이 Y로 바뀌고 학생테이블의 휴학웨더값을 바꾸어줌
	//휴학이 휴학신청, 휴학이 복학신청, 재학이 휴학신청
	public int updateAbsence(Connection conn, String requestid) {
		int result = 0;
		
		return result;
	};
	
	public int deleteAbsence(Connection conn, String requestid) {
		int result = 0; // 신청취소가 되면 승인여부고려해서 학생테이블의 휴학웨더 바꾸어준다.
		
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
