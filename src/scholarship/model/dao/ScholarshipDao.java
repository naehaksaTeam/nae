package scholarship.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import scholarship.model.vo.Scholarship;
import static common.JDBCTemp.close;

public class ScholarshipDao {
	public ScholarshipDao() {}
	
	public ArrayList<Scholarship> selectScholarship(Connection conn) {
		ArrayList<Scholarship> list = new ArrayList<Scholarship>();
		
		return list;
	};

	public Scholarship selectOneScholarship(Connection conn, String ssname) {
		Scholarship ssst = new Scholarship();
		
		return ssst;
	}
	
	public int insertScholarship(Connection conn, String ssname) {
		int result = 0;
		
		return result;
	}

	public int updateScholarship(Connection conn, String ssname) {
		int result = 0;
		
		return result;
	}
	
	public int deleteScholarship(Connection conn, String ssname) {
		int result = 0;
		
		return result;
	}

}
