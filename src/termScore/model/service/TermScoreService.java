package termScore.model.service;

import java.sql.Connection;

import termScore.model.dao.TermScoreDao;
import termScore.model.vo.TermScore;
import static common.JDBCTemp.*;
public class TermScoreService {
	TermScoreDao tdao = new TermScoreDao();
	
	public TermScoreService(String sid){}
	
	public TermScore selectTotalScore(String sid) {
		Connection conn = getConnection();
		TermScore tscore = tdao.selectTotalScore(conn, sid);
		close(conn);
		return(tscore);
	}
}
