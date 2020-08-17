package attendance.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import attendance.model.dao.AtndnDao;
import attendance.model.vo.Atndn;


public class AtndnService {
	private AtndnDao adao = new AtndnDao(); 
	public AtndnService() {}

	
	
	//s1 나의 수강과목 메인 출력	
	public ArrayList<Atndn> selectMyLctr(String sid) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectMyLctr(conn, sid);
		close(conn);
		return list;
	}
	
	/*
	 * public ArrayList<Atndn> AtndnList(String id) { Connection conn =
	 * getConnection(); ArrayList<Atndn> list = adao.AtndnList(conn, id);
	 * close(conn); return list; }
	 */
	
	public ArrayList<Atndn> selectLctrAtndn(String sid, String semester){
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectLctrAtndn(conn, sid, semester);
		close(conn);
		return list;
	}



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
	
	
	
	//P1-1-1 출결업데이트
	public int updateWeekAll(ArrayList<Atndn> list2) {

		Connection conn = getConnection();
		int r = adao.updateWeekAll(conn,list2);
		if(r > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return r;
	}

	public ArrayList<Atndn> selectMyLctrSemstr(String sid, String semester) {
		Connection conn = getConnection();
		 ArrayList<Atndn>  list = adao.selectMyLctrSemstr(conn, sid, semester);
		close(conn);
		return list;
	}

	
//S1-1 학생 - 해당 강의 One 에 대한 1~15주차 출결조회 
	public Atndn selectOneAtndn(String sid, String lcode, String semester) {
		Connection conn = getConnection();
		Atndn atndn = adao.selectOneAtndn(conn,sid, lcode, semester);
		close(conn);
		return atndn;
	}

	
	//P1-1 교수- 선택한 과목을 듣는 수강생 조회 
	public ArrayList<Atndn> selectOneAtndnStd(String lcode, String semester) {
		Connection conn = getConnection();
		ArrayList<Atndn> list = adao.selectOneAtndnStd(conn, lcode, semester);
		close(conn);
		return list;
	
	}



	public int updateOneAtndn(String sid, String value, String week, String lcode) {
		Connection conn = getConnection();
		int result = adao.updateOneAtndn(conn, sid, value, week, lcode);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

}
