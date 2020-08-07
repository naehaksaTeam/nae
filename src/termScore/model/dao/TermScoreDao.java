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
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		TermScore tscore = new TermScore();
		
		String query = "select sid, sum(termaplpoint), sum(termgetpoint), avg(grdpoint), round(avg(tgpa),2) from TermScoreView group by ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sid);
			rset = pstmt.executeQuery();
			
			
			
			if (rset.next()) {
				tscore.setSid(sid);
				tscore.setSname(rset.getString("sname"));
				tscore.setTermaplpoint(rset.getInt("termaplpoint"));
				tscore.setTermgetpoint(rset.getInt("termgetpoint"));
				tscore.setGrdpoint(rset.getInt("grdpoint"));
				tscore.setTgpa(rset.getInt("tgpa"));	
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return tscore;
	}
	
	//학생 학기별 성적조회
	
	//관리자용 성적조회 ? 
}
