package attendance.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

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


 //성적이랑 합침 
	public ArrayList<Atndn> selectProfAtndnList(String pid, String semester, String lcode) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectProfAtndnList(conn, pid, semester, lcode);
		close(conn);
		return list;
	}

	public int updateAtndn(Atndn atndn) {
		Connection conn = getConnection();
		int result = adao.updateAtndn(conn, atndn);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int updateWeekAll(Map<String,Atndn> map) {
		//출결 여러개 업데이트
		Connection conn = getConnection();
		close(conn);
		int r = 0;
		Iterator<String> it = map.keySet().iterator();
		while(it.hasNext()) {
			String who = it.next();
			conn = getConnection();
			r = adao.updateWeekAll(conn,who,map.get(who));
			if(r > 0) {
				commit(conn);
				close(conn);
			}else {
				System.out.println("업데이트 실패 : " + who);
				rollback(conn);
				close(conn);
				break;
			}
		}
		return r;
	}

}
