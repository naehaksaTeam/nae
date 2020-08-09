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

	public ArrayList<Atndn> selectSearchUserid(String keyword) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectSearchUserid(conn, keyword);
		close(conn);
		return list;
	}

	public ArrayList<Atndn> selectSearchLecture(String keyword) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectSearchLecture(conn, keyword);
		close(conn);
		return list;
	}
 //성적이랑 합침 
	public ArrayList<Atndn> selectProfAtndnList(String pid, String semester, String lcode) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectProfAtndnList(conn, pid, semester, lcode);
		close(conn);
		return list;
	}

}
