package lectureScore.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import lectureScore.model.dao.LectureScoreDao;
import lectureScore.model.vo.LectureScore;
import static common.JDBCTemp.*;

public class LectureScoreService {
	LectureScoreDao ldao = new LectureScoreDao();
	
	public LectureScoreService() {}
	
	public ArrayList<LectureScore> selectLectureScore(String sid, String semester){
		Connection conn = getConnection();
		ArrayList<LectureScore> list = ldao.selectLectureScore(conn, sid, semester);
		close(conn);
		return list;
	}
	
	public ArrayList<LectureScore> selectProfLectureList(String pid, String semester) {
		Connection conn = getConnection();
		ArrayList<LectureScore> list = ldao.selectProfLectureList(conn, pid, semester);
		close(conn);
		return list;
	}
	
	public int updateScore(LectureScore lscore) {
		Connection conn = getConnection();
		int result = ldao.updateScore(conn, lscore);
		
		if (result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public ArrayList<LectureScore> selectProfLectureScore(String lname, String semester) {
		Connection conn = getConnection();
		ArrayList<LectureScore> list = ldao.selectProfLectureScore(conn, lname, semester);
		close(conn);
		return list;
	}
	
}
