package ssbenefitst.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import ssbenefitst.model.dao.SsbenefitstDao;
import ssbenefitst.model.vo.Ssbenefitst;



public class SsbenefitstService {
	private SsbenefitstDao ssstdao = new SsbenefitstDao();
	
	public SsbenefitstService() {};
	
	public ArrayList<Ssbenefitst> selectSsbenefitst() {
		Connection conn = getConnection();
		ArrayList<Ssbenefitst> list = ssstdao.selectSsbenefitst(conn);
		close(conn);
		return list;
	};
	
	public Ssbenefitst selectOneSsbenefitst(int benefitterm, String studentid) {
		Connection conn = getConnection();
		Ssbenefitst ssbenefitst = ssstdao.selectOneSsbenefitst(conn, benefitterm, studentid);
		close(conn);
		return ssbenefitst;
	};
	
	public ArrayList<Ssbenefitst> selectPrivateSsst(String studentid) {
		Connection conn = getConnection();
		ArrayList<Ssbenefitst> list = ssstdao.selectPrivateSsst(conn, studentid);
		close(conn);
		return list;
	}
	
	public int insertSsbenefitst(Ssbenefitst ssst) {
		Connection conn = getConnection();
		int result = ssstdao.insertSsbenefitst(conn, ssst);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	};
	
	public int updateSsbenefitst(Ssbenefitst newssst, Ssbenefitst originssst) {
		Connection conn = getConnection();
		int result = ssstdao.updateSsbenefitst(conn, newssst, originssst);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	};
	
	public int deleteSsbenefitst(int benefitterm, String studentid) {
		Connection conn = getConnection();
		int result = ssstdao.deleteSsbenefitst(conn, benefitterm, studentid);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	};
}
