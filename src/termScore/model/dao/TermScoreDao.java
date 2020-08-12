package termScore.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import termScore.model.vo.TermScore;
public class TermScoreDao {

	public ArrayList<TermScore> selectMain(Connection conn, String id) {
		ArrayList<TermScore> list = new ArrayList<TermScore>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query ="select id, SEMESTER, TERMGETPOINT from termscore where id = ? order by 2";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				TermScore score = new TermScore();
				
				score.setSid(id);
				score.setSemester(rset.getString("semester"));
				score.setTermgetpoint(rset.getInt("TERMGETPOINT"));
				
				list.add(score);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
			
			
		}
		System.out.println("dao"+ list);
		return list;
	}
}
















