package professor.model.dao;

import static common.JDBCTemp.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import professor.model.vo.Professor;

public class ProfessorDao {
	public ProfessorDao() {
	}

	public int insert(Connection conn, Professor professor) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "insert into professor values (?, ?, ?, ?, ?, default, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, professor.getProfessorid());
			pstmt.setString(2, professor.getProfessorname());
			pstmt.setString(3, professor.getProfessorssn());
			pstmt.setString(4, professor.getAddress());
			pstmt.setString(5, professor.getPhone());
			pstmt.setString(6, professor.getGender());
			pstmt.setString(7, professor.getEmail());
			pstmt.setString(8, professor.getTreasure());
			pstmt.setString(9, professor.getCategoryname());
			pstmt.setString(10, professor.getMajorno());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	//한명조회
	public Professor selectOne(Connection conn, String professorid) {
		Professor professor = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from professor where professorid = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, professorid);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				professor = new Professor();

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return professor;
	}

	
	//전체조회
	public ArrayList<Professor> selectList(Connection conn) {
		ArrayList<Professor> list = new ArrayList<Professor>();
		Statement stmt = null;
		ResultSet rset = null;

		String query = "select * from professor";

		try {
			stmt = conn.createStatement();

			rset = stmt.executeQuery(query);

			while (rset.next()) {
				Professor professor = new Professor();
				professor.setProfessorid(rset.getString("professorid"));
				professor.setProfessorname(rset.getString("professorname"));
				professor.setProfessorssn(rset.getString("professorssn"));
				professor.setAddress(rset.getString("address"));
				professor.setPhone(rset.getString("phone"));
				professor.setGender(rset.getString("gender"));
				professor.setEmail(rset.getString("email"));
				professor.setTreasure(rset.getString("treasure"));
				professor.setCategoryname(rset.getString("categoryname"));
				professor.setMajorno(rset.getString("majorno"));
				
				list.add(professor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		return list;
	}

	public int update(Connection conn, Professor professor) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update professor set professorid = ? where majorno = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, professor.getProfessorid());
			pstmt.setString(2, professor.getMajorno());


			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int delete(Connection conn, String professorid) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "delete from professor where professorid = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, professorid);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
}
