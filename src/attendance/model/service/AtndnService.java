package attendance.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;
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
	
	/*
	 * public ArrayList<Atndn> AtndnList(String id) { Connection conn =
	 * getConnection(); ArrayList<Atndn> list = adao.AtndnList(conn, id);
	 * close(conn); return list; }
	 */
	
	public ArrayList<Atndn> selectLctrAtndn(String sid, String lcode){
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectLctrAtndn(conn, sid, lcode);
		close(conn);
		return list;
	}

}
