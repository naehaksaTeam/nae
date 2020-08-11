package notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


import notice.model.vo.Notice;
import static common.JDBCTemp.*;

public class NoticeDao {
	public NoticeDao() {
	}

	public ArrayList<Notice> selectAll(Connection conn) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		Statement stmt = null;
		ResultSet rset = null;
		
		/*
		 * 번호</th> <th>제목</th> <th>작성자</th> <th>작성날짜</th> <th>글내용</th> <th>파일첨부</th>
		 * <th>조회수
		 */
		String query = "select * from notice order by noticeno,noticedate asc ";
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			while (rset.next()) {
				Notice notice = new Notice();

				notice.setNoticeNo(rset.getInt("notice"));
				notice.setNoticeTitle(rset.getString("noticetitle"));
				notice.setNoticeDate(rset.getDate("noticedate"));
				notice.setNoticeWriter(rset.getString("noticewriter"));
				notice.setNoticeContent(rset.getString("noticecontent"));
				notice.setOriginalFile(rset.getString("originalfile"));
				notice.setNoticeReadCount(rset.getInt("noticereadcount"));
				list.add(notice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		return list;
	}

	public Notice selectOne(Connection conn, int noticeNo) {
		Notice notice = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from notice where noticeno=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				notice = new Notice();
				notice.setNoticeNo(noticeNo);
				notice.setNoticeNo(rset.getInt("NOTICENO"));
				notice.setNoticeTitle(rset.getString("NOTICETITLE"));
				notice.setNoticeDate(rset.getDate("NOTICEDATE"));
				notice.setNoticeWriter(rset.getString("NOTICEWRITER"));
				notice.setNoticeContent(rset.getString("NOTICECONTENT"));
				notice.setOriginalFile(rset.getString("ORIGINALFILE"));
				notice.setRenameFile(rset.getString("RENAMEFILE"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return notice;
	}

	public int insertNotice(Connection conn, Notice notice) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "insert into notice values((select max(noticeno)+1 from notice),?,sysdate,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, notice.getNoticeTitle());
			pstmt.setString(2, notice.getNoticeWriter());
			pstmt.setString(3, notice.getNoticeContent());
			pstmt.setString(4, notice.getOriginalFile());
			pstmt.setString(5, notice.getRenameFile());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int updateNotice(Connection conn, Notice notice) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "update notice set noticetitle = ? , noticecontent=? , noticedate = sysdate , originalfile=?, renamefile= ?  where noticeno = ? ";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, notice.getNoticeTitle());
			pstmt.setString(2, notice.getNoticeContent());
			pstmt.setString(3, notice.getOriginalFile());
			pstmt.setString(4, notice.getRenameFile());
			pstmt.setInt(5, notice.getNoticeNo());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteNotice(Connection conn, int noticeNo) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "delete from notice where noticeno=?";

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setInt(1, noticeNo);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;

	}

	public ArrayList<Notice> selectTop3(Connection conn) {
		ArrayList<Notice> list = new ArrayList<Notice>();

		Statement stmt = null;
		ResultSet rset = null;
		String query = "" + "select *" + "from (SELECT ROWNUM RNUM, " + "        NOTICENO , " + "        NOTICETITLE, "
				+ "        NOTICEDATE" + "    FROM (SELECT * FROM NOTICE ORDER BY NOTICENO DESC)" + "    )"
				+ "where RNUM >=1 AND RNUM <=3";
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			while (rset.next()) {
				Notice notice = new Notice();

				notice.setNoticeNo(rset.getInt("NOTICENO"));
				notice.setNoticeTitle(rset.getString("NOTICETITLE"));
				notice.setNoticeDate(rset.getDate("NOTICEDATE"));

				list.add(notice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
			close(conn);
		}
		return list;
	}
	
	public ArrayList<Notice> selectNewTop5(Connection conn) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String query="SELECT * FROM (SELECT ROWNUM RNUM, NOTICENO, NOTICETITLE, NOTICEDATE FROM (SELECT * FROM NOTICE ORDER BY NOTICEDATE DESC)) WHERE RNUM >= 1 AND RNUM <= 5";  
				
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			while(rset.next()) {
				
				Notice notice = new Notice();
				
				notice.setNoticeNo(rset.getInt("NOTICENO"));
				notice.setNoticeTitle(rset.getString("NOTICETITLE"));
				notice.setNoticeDate(rset.getDate("NOTICEDATE"));
				
				
				list.add(notice);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		System.out.println("dao"+ list);
		return list;
	}
	
	
}
