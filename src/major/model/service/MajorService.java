package major.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import major.model.dao.MajorDao;
import major.model.vo.Major;



public class MajorService {
	private MajorDao mdao = new MajorDao();
	
	public MajorService() {}

	public ArrayList<Major> selectList(int currentPage, int limit) {
		Connection conn = getConnection();
	      ArrayList<Major> list = mdao.selectList(conn, currentPage, limit);
	      close(conn);
	      return list;
	   }

	public int getListCount() {
		 Connection conn = getConnection();
	      int listCount = mdao.getListCount(conn);
	      close(conn);
	      return listCount;
	   }

	public int insertMajor(Major major) {
		Connection conn = getConnection();
		int result = mdao.insertMajor(conn,major);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public Major selectMajor(String majorno) {
		Connection conn = getConnection();
		Major major = mdao.selectOne(conn, majorno);
		close(conn);
		return major;
	}

	public int deleteMajor(String majorNo) {
		Connection conn = getConnection();
		int result = mdao.deleteMajor(conn, majorNo);
		System.out.println("service "+ result);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public Major selectMajor(int majorNo) {
		Connection conn = getConnection();
		Major major = mdao.selectOne(conn, majorNo);
		close(conn);
		return major;
	}

	public int updateMajor(Major major) {
		Connection conn = getConnection();
		int result = mdao.updateNotice(conn, major);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		System.out.println("닫기껄껄");
		return result;
	}

	public ArrayList<Major> selectOneTuition() {
		// TODO Auto-generated method stub
		return null;
	}

	

	
	
	
	//작성 서비스
	
	
}
