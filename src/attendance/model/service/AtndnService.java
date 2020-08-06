package attendance.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import attendance.model.dao.AtndnDao;
import attendance.model.vo.Atndn;

public class AtndnService {
	private AtndnDao adao = new AtndnDao(); 
	public AtndnService() {}
	
	public ArrayList<Atndn> selectMyLctr(String studentid) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectMyLctr(conn, studentid);
		close(conn);
		return list;
	}
}
