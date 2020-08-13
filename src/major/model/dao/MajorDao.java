package major.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import major.model.vo.Major;
import major.model.vo.Major1;
import scholarship.model.vo.Scholarship;
import ssbenefitst.model.vo.Ssbenefitst;




public class MajorDao {
	public MajorDao() {
		
	}

	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;

		String query = "SELECT COUNT(*) FROM major";
		System.out.println("행조회성공");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			if (rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		System.out.println("getListCount Dao성공 !");
		
		return listCount;
	}

	public ArrayList<Major> selectList(Connection conn, int currentPage, int limit) {
		ArrayList<Major> list = new ArrayList<Major>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "SELECT * FROM (SELECT ROWNUM RNUM, majorno, majorname, capacity, tuition, categoryname  "
				+ "                        FROM (SELECT * FROM major ORDER BY majorno desc)) "
				+ "WHERE RNUM >= ? AND RNUM <= ?";
		System.out.println("select List 조회성공!");
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				Major major = new Major();

				major.setMajorno(rset.getString("majorno"));
				major.setMajorname(rset.getString("majorname"));
				major.setCapacity(rset.getInt("capacity"));
				major.setTuition(rset.getInt("tuition"));
				major.setCategoryname(rset.getString("categoryname"));
				
				

				list.add(major);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	public int insertMajor(Connection conn, Major major) {
		int result =0;
		PreparedStatement pstmt = null;
		
		String query= "insert into major values(?,?,?,?,?)";
		System.out.println("dao성공!");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, major.getMajorno());
			pstmt.setString(2, major.getMajorname());
			pstmt.setInt(3, major.getCapacity());
			pstmt.setInt(4, major.getTuition());
			pstmt.setString(5, major.getCategoryname());
			
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
}

	public Major selectOne(Connection conn, String majorno) {
		Major major = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from major where majorno=?";
		System.out.println("majordetail dao성공");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, majorno);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				major = new Major();
				major.setMajorno(rset.getString("majorno"));
				major.setMajorname(rset.getString("majorname"));
				major.setCapacity(rset.getInt("capacity"));
				major.setTuition(rset.getInt("tuition"));
				major.setCategoryname(rset.getString("categoryname"));
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		return major;
		
	}

	public int deleteMajor(Connection conn, String majorNo) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "delete from major where majorno=?";

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, majorNo);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("dao" + result);
		return result;

	}

	public Major selectOne(Connection conn, int majorNo) {
		Major major = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from major where majorno=?";
			System.out.println("하나고름!");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, majorNo);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				 major = new Major();
				major.setMajorno(rset.getString("majorno"));
				major.setMajorname(rset.getString("majorname"));
				major.setCapacity(rset.getInt("capacity"));
				major.setTuition(rset.getInt("tuition"));
				major.setCategoryname(rset.getString("categoryname"));
				
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		return major;
	}

	public int updateNotice(Connection conn, Major major) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "update major set  majorname=? , capacity = ? , tuition = ?   where majorno = ? ";
		System.out.println("update!");
		try {
			pstmt = conn.prepareStatement(query);
			
			
			pstmt.setString(1, major.getMajorname());
			pstmt.setInt(2, major.getCapacity());
			pstmt.setInt(3, major.getTuition());
			pstmt.setString(4, major.getMajorno());
			
			

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Major1 selectOneTuition(Connection conn, String id) {
		PreparedStatement pstmt = null;
		Major1 major1 = null;
		ResultSet rset = null;
		String query = "select a.categoryname as \"categoryname\" , b.majorname as \"majorname\" , a.id as \"id\" , a.name as \"name\" , b.tuition as \"tuition\"" + 
				"from student a " + 
				"join major b on a.majorno=b.majorno " + 
				"where id = ?";
		
		try {
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			
			
			
		rset = 	pstmt.executeQuery();
			if(rset.next()) {
				major1 = new Major1();
				
				major1.setCategoryname(rset.getString("categoryname"));
				major1.setMajorname(rset.getString("majorname"));
				major1.setId(rset.getString("id"));
				major1.setName(rset.getString("name"));
				major1.setTuition(rset.getInt("tuition"));
				
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
			
		}
		
		return major1;
	}

	public Date firstTermCheck(Connection conn) {
		Date term = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query ="  select sysdate from dual where sysdate between (select to_date(concat(lpad(SCHSTARTMONTH, 2, 0), lpad(SCHSTARTDATE, 2, 0)), 'MMdd') " + 
								"  from schedule " + 
								"  where schname like '%1학기%' and schname like '%개강%' and extract(YEAR from to_date(SCHSTARTYEAR, 'yyyy')) = extract(YEAR from sysdate)) " + 
								"  and (select to_date(concat(lpad(SCHSTARTMONTH, 2, 0), lpad(SCHSTARTDATE, 2, 0)), 'MMdd') " + 
								"  from schedule " + 
								"  where schname like '%2학기%' and schname like '%개강%' and extract(YEAR from to_date(SCHSTARTYEAR, 'yyyy')) = extract(YEAR from sysdate))";
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				term = rset.getDate("sysdate");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(stmt);
		}
		return term;
	}

	public Date secondCheck(Connection conn) {
		Date termcheck = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query =" select sysdate from dual where sysdate between (select to_date(concat(lpad(SCHSTARTMONTH, 2, 0), lpad(SCHSTARTDATE, 2, 0)), 'MMdd') " + 
								" from schedule " + 
								" where schname like '%1학기%' and schname like '%개강%' and extract(YEAR from to_date(SCHSTARTYEAR, 'yyyy')) = extract(YEAR from sysdate)) " + 
								" and (select to_date(concat(lpad(SCHSTARTMONTH, 2, 0), lpad(SCHSTARTDATE, 2, 0)), 'MMdd') " + 
								" from schedule " + 
								" where schname like '%1학기%' and schname like '%종강%' and extract(YEAR from to_date(SCHSTARTYEAR, 'yyyy')) = extract(YEAR from sysdate))";
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				termcheck = rset.getDate("sysdate");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(stmt);
		}
		return termcheck;
	}

	public Date second2Check(Connection conn) {
		Date termcheck = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query =" select sysdate from dual where sysdate between (select to_date(concat(lpad(SCHSTARTMONTH, 2, 0), lpad(SCHSTARTDATE, 2, 0)), 'MMdd') " + 
								" from schedule " + 
								" where schname like '%2학기%' and schname like '%개강%' and extract(YEAR from to_date(SCHSTARTYEAR, 'yyyy')) = extract(YEAR from sysdate)) " + 
								" and (select to_date(concat(lpad(SCHSTARTMONTH, 2, 0), lpad(SCHSTARTDATE, 2, 0)), 'MMdd') " + 
								" from schedule " + 
								" where schname like '%2학기%' and schname like '%종강%' and extract(YEAR from to_date(SCHSTARTYEAR, 'yyyy')) = extract(YEAR from sysdate))";
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				termcheck = rset.getDate("sysdate");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(stmt);
		}
		return termcheck;
	}

	public Ssbenefitst selectSsbenefitst(Connection conn, String id, String term) {
		// TODO Auto-generated method stub
		return null;
	}





	

	
	
	
	
	
	
	
	
	
	
	
	
}
