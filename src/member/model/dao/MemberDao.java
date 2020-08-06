package member.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import member.model.vo.Member;
import static common.JDBCTemp.close;

public class MemberDao {
	public MemberDao() {}
	
	public Member loginCheck(Connection conn, String userid, String userpwd) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where userid = ? and userpwd = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				member = new Member();
				
				member.setUserid(userid);
				member.setUserpwd(userpwd);
				member.setUsername(rset.getString("username"));
				member.setUserssn(rset.getString("userssn"));
				member.setAddress(rset.getString("address"));
				member.setPhone(rset.getString("phone"));
				member.setEmail(rset.getString("email"));
				member.setTreasure(rset.getString("treasure"));
			}			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return member;
	}

	public int insertMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserid());
			pstmt.setString(2, member.getUserpwd());
			pstmt.setString(3, member.getUsername());
			pstmt.setString(4, member.getUserssn());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getPhone());
			pstmt.setString(7, member.getEmail());
			pstmt.setString(8, member.getTreasure());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public Member selectMember(Connection conn, String userid) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where userid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				member = new Member();
				
				member.setUserid(userid);
				member.setUserpwd(rset.getString("userpwd"));
				member.setUsername(rset.getString("username"));
				member.setUserssn(rset.getString("userssn"));
				member.setAddress(rset.getString("address"));
				member.setPhone(rset.getString("phone"));
				member.setEmail(rset.getString("email"));
				member.setTreasure(rset.getString("treasure"));
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return member;
	}

	public int deleteMember(Connection conn, String userid) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "delete from member where userid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int updateMember(Connection conn , Member member) {
		int result =0;
		PreparedStatement pstmt = null;
		
		String query = "update member set userpwd =? , username =? , userssn =? , "
				+ "address =? , phone = ?, email = ?, treausre = ? "
				+ "where userid =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, member.getUserpwd());
			pstmt.setString(2, member.getUsername());
			pstmt.setString(3, member.getUserssn());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getTreasure());
			pstmt.setString(8, member.getUserid());
		
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Member> selectList(Connection conn) {
		ArrayList<Member> list = new ArrayList<Member>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from member";
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Member member = new Member();
				member.setUserid(rset.getString("userid"));
				member.setUserpwd(rset.getString("userpwd"));
				member.setUsername(rset.getString("username"));
				member.setUserssn(rset.getString("userssn"));
				member.setAddress(rset.getString("address"));
				member.setPhone(rset.getString("phone"));
				member.setEmail(rset.getString("email"));
				member.setTreasure(rset.getString("treasure"));
				
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(conn);
			close(stmt);
		}
		return list;
	}

	
	public int selectCheckId(Connection conn, String userid) {
		int idcount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select count(userid) from member where userid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				idcount = rset.getInt(1);
				System.out.println("idcount : " + idcount);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return idcount;
	}
	
}











