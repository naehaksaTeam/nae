package major.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import major.model.vo.Major;



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
			close(pstmt);
			close(rset);
		}
		return major;
		
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
}
