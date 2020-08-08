package termScore.model.dao;

import static common.JDBCTemp.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import termScore.model.vo.TermScore;
public class TermScoreDao {

	//학생 전체학년 성적조회
	public TermScoreDao() {
	}

	public TermScore selectTotalScore(Connection conn, String sid) {
		Statement stmt = null;
		ResultSet rset = null;
		
		TermScore tscore = new TermScore();
		String query = "select sid, sum(termaplpoint) taplpoint, sum(termgetpoint) tgetpoint, avg(grdpoint) grdpoint, round(avg(tgpa),2) avgtgpa from TermScoreView where sid= '"+ sid +"' group by sid";
		try {
			
			stmt =conn.createStatement();
			rset = stmt.executeQuery(query);
		
			if(rset.next()) {
				tscore.setSid(sid);
				tscore.setTermaplpoint(rset.getInt("taplpoint"));
				tscore.setTermgetpoint(rset.getInt("tgetpoint"));
				tscore.setGrdpoint(rset.getInt("grdpoint"));
				tscore.setTgpa(rset.getDouble("avgtgpa"));	
				System.out.println(tscore);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return tscore;
	}

	//학생 학기별 성적조회
	public ArrayList<TermScore> selectTermScore(Connection conn, String sid) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<TermScore> list = new ArrayList<TermScore>();
		String query = "select sid, semester, termaplpoint, termgetpoint, grdpoint, tgpa from TermScoreView where sid= ?";

		try {
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sid);
			rset = pstmt.executeQuery();
		
			while(rset.next()) {
				TermScore tscore = new TermScore();
				
				tscore.setSid(sid);
				tscore.setSemester(rset.getString("semester"));
				tscore.setTermaplpoint(rset.getInt("termaplpoint"));
				tscore.setTermgetpoint(rset.getInt("termgetpoint"));
				tscore.setGrdpoint(rset.getInt("grdpoint"));
				tscore.setTgpa(rset.getDouble("tgpa"));	
				
				list.add(tscore);		
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	//관리자용 성적조회 ? 
}
