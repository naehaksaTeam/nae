package student.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import student.model.vo.Student;



public class StudentDao {
	public Student selectOne(Connection conn, String id, String treasure ) {
		  Student student = null;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      String query = "select * from student where id = ? and treasure = ? ";
					
					
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, id);
	         pstmt.setString(2, treasure);
	         rset = pstmt.executeQuery(); //쿼리를 디비로 보냄

	         if (rset.next()) {
	        	 student = new Student();

	        	 student.setId(rset.getString("id"));
	        	 student.setTreasure(rset.getString("treasure"));
	           
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         close(rset);
	         close(pstmt);
	      }

	      return student;
	   }

	public int updatestudentpassword(Connection conn, String cryptoPwd, String id) {
		int result =0;
		PreparedStatement pstmt = null;
		
		String query = "update student set password =? where id = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cryptoPwd);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
}
