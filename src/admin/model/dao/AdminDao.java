package admin.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import admin.model.vo.Admin;

public class AdminDao {
	public AdminDao() {}

	public int insert(Connection conn, Admin admin) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into student values (?, ?, ?, ?, ?, default, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, admin.getAdminid());
			pstmt.setString(2, admin.getAdminname());
			pstmt.setString(3, admin.getAdminssn());
			pstmt.setString(4, admin.getAddress());
			pstmt.setString(5, admin.getPhone());
			pstmt.setString(6, admin.getEmail());
			pstmt.setString(7, admin.getTreasure());
			pstmt.setDate(8, admin.getAdminhiredate());
			
		
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	
	public Admin selectOne(Connection conn, String adminid) {
		Admin admin = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from admin where adminid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, adminid);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				admin = new Admin();
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return admin;
	}

	public ArrayList<Admin> selectList(Connection conn) {
		ArrayList<Admin> list = new ArrayList<Admin>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from admin";
		
		try {
		
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Admin admin = new Admin();
				
				admin.setAdminid(rset.getString("adminid"));
				admin.setAdminname(rset.getString("adminname"));
				admin.setAdminssn(rset.getString("adminssn"));
				admin.setAddress(rset.getString("address"));
				admin.setPhone(rset.getString("phone"));
				admin.setGender(rset.getString("gender"));
				admin.setEmail(rset.getString("email"));
				admin.setTreasure(rset.getString("treasure"));
				admin.setAdminhiredate(rset.getDate("adminhiredate"));

				
				list.add(admin);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public int update(Connection conn, Admin admin) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update professor set adminid = ? where adminhiredate = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, admin.getAdminid());
			pstmt.setDate(2, admin.getAdminhiredate());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int delete(Connection conn, String adminid) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "delete from professor where adminid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, adminid);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
}













