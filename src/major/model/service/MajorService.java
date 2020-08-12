package major.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import major.model.dao.MajorDao;
import major.model.vo.Major;
import notice.model.vo.Notice;


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
	
	
	//작성 서비스
	
	
}
