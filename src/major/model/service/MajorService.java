package major.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

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
	
	
	//작성 서비스
	
	
}
