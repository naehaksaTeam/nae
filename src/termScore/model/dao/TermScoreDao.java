package termScore.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import board.model.vo.Board;
import termScore.model.vo.TermScore;
public class TermScoreDao {

	//학생 전체학년 성적조회
	public TermScoreDao() {
	}

	public ArrayList<TermScore> selectTop3(Connection conn, String sid) {
		ArrayList<TermScore> list = new ArrayList<TermScore>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select sid, sum(termaplpoint), sum(termgetpoint), avg(grdpoint), round(avg(tgpa),2) from TermScoreView group by ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sid);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				TermScore tscore = new TermScore();
				
				
				tscore.setSid(sid);
				tscore.setSname(rset.getString("sname"));
				tscore.set
				board.setBoardNum(rset.getInt("board_num"));
				board.setBoardTitle(rset.getString("board_title"));
				board.setBoardWriter(rset.getString("board_Writer"));
				board.setBoardContent(rset.getString("board_content"));
				board.setBoardOriginalFileName(rset.getString("board_original_filename"));
				board.setBoardRenameFileName(rset.getString("board_Rename_Filename"));
				board.setBoardDate(rset.getDate("board_date"));
				board.setboardLevel(rset.getInt("board_Level"));
				board.setBoardRef(rset.getInt("board_ref"));
				board.setBoardReplyRef(rset.getInt("board_reply_ref"));
				board.setBoardReplySeq(rset.getInt("board_reply_seq"));
				board.setBoardReadCount(rset.getInt("board_readcount"));
				
				list.add(board);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	//학생 학기별 성적조회
	
	//관리자용 성적조회 ? 
}
