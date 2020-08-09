package ssbenefitst.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import ssbenefitst.model.vo.Ssbenefitst;

public class SsbenefitstDao {
	public SsbenefitstDao() {}

	public ArrayList<Ssbenefitst> selectSsbenefitst(Connection conn) {
		ArrayList<Ssbenefitst> list = new ArrayList<Ssbenefitst>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from ssbenefitst";
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Ssbenefitst ssst = new Ssbenefitst(rset.getInt("benefitterm"), rset.getString("id"), rset.getString("ssname"));
				
				list.add(ssst);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public Ssbenefitst selectOneSsbenefitst(Connection conn, int benefitterm, String studentid) {
		Ssbenefitst ssst = new Ssbenefitst();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = "select * from ssbenefitst where benefitterm = ? and id = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, benefitterm);
			pstmt.setString(2, studentid);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				ssst = new Ssbenefitst(rset.getInt("benefitterm"), rset.getString("id"), rset.getString("ssname"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return ssst;
	}

	public int insertSsbenefitst(Connection conn, Ssbenefitst ssst) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into ssbenefitst values(?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, ssst.getBenefitterm());
			pstmt.setString(2, ssst.getStudentid());
			pstmt.setString(3, ssst.getSsname());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}	
		return result;
	}

	public int updateSsbenefitst(Connection conn, Ssbenefitst newssst, Ssbenefitst originssst) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update ssbenefitst set benefitterm = ?, id=? , ssname=? where benefitterm= ? and id = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, newssst.getBenefitterm());
			pstmt.setString(2, newssst.getStudentid());
			pstmt.setString(3, newssst.getSsname());
			pstmt.setInt(4, originssst.getBenefitterm());
			pstmt.setString(5, originssst.getStudentid());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}	
		return result;
	}

	public int deleteSsbenefitst(Connection conn, int benefitterm, String studentid) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "delete from ssbenefitst where benefitterm = ? and id = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, benefitterm);
			pstmt.setString(2, studentid);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}		
		return result;
	}

	public ArrayList<Ssbenefitst> selectPrivateSsst(Connection conn, String studentid) {
		ArrayList<Ssbenefitst> list =  new ArrayList<Ssbenefitst>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = "select * from ssbenefitst where id = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, studentid);

			while(rset.next()) {
				Ssbenefitst ssst = new Ssbenefitst(rset.getInt("benefitterm"), rset.getString("id"), rset.getString("ssname"));
				
				list.add(ssst);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	};
}
