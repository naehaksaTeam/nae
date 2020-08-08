package lectureScore.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static common.JDBCTemp.*;
import lectureScore.model.vo.LectureScore;

public class LectureScoreDao {

	public LectureScoreDao() {
	}
	//학생의 과목별 성적 조회 
	public ArrayList<LectureScore> selectLectureScore(Connection conn, String sid, String semester) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<LectureScore> list = new ArrayList<LectureScore>();

		String query = "select sid, lcode, lname, category, lpoint, grade, retake from LScoreView where sid= ? and semester = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sid);
			pstmt.setString(2, semester);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				LectureScore lscore = new LectureScore();

				lscore.setSid(sid);
				lscore.setLcode(rset.getString("lcode"));
				lscore.setLname(rset.getString("lname"));
				lscore.setCategory(rset.getString("category"));
				lscore.setLpoint(rset.getInt("lpoint"));
				lscore.setGrade(rset.getString("grade"));
				lscore.setRetake(rset.getString("retake").equals("Y") ? "재수강" : "-");

				list.add(lscore);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}
	
	//교수 성적 목록 출력
	public ArrayList<LectureScore> selectProfLectureList(Connection conn, String pid, String semester) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<LectureScore> list = new ArrayList<LectureScore>();

		String query = "select distinct p.id pid, semester, category, l.lcode, lname, capacity from professor p " + 
				"join lecture l on p.id=l.id join lapplication la on l.lcode=la.lcode " +
				"where p.id = ? and semester = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pid);
			pstmt.setString(2, semester);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				LectureScore lscore = new LectureScore();

				lscore.setPid(pid);
				lscore.setSemester(rset.getString("semester"));
				lscore.setCategory(rset.getString("category"));
				lscore.setLcode(rset.getString("lcode"));
				lscore.setLname(rset.getString("lname"));
				lscore.setCapacity(rset.getInt("capacity"));
				
				list.add(lscore);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}
	
	
}
