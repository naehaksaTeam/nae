package student.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import student.model.vo.Admin;
import student.model.vo.Professor;

public class AdminDao {
	  public Admin selectOne(Connection conn, String id, String treasure ) {
		  Admin admin = null;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      String query = "select * from administrator where id = ? and treasure = ? ";
					
					
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, id);
	         pstmt.setString(2, treasure);
	         rset = pstmt.executeQuery(); //쿼리를 디비로 보냄

	         if (rset.next()) {
	        	 admin = new Admin();

	        	 admin.setId(rset.getString("id"));
	        	 admin.setTreasure(rset.getString("treasure"));
	           
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         close(rset);
	         close(pstmt);
	      }

	      return admin;
	   }
}
