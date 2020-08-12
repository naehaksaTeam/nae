package ssbenefitst.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import ssbenefitst.model.vo.Ssbenefitst;

public class SsbenefitstDao {
	public SsbenefitstDao() {}

	public ArrayList<Ssbenefitst> selectSsbenefitst(Connection conn) {
		ArrayList<Ssbenefitst> list = new ArrayList<Ssbenefitst>();
		
		return list;
	}

	public Ssbenefitst selectOneSsbenefitst(Connection conn, int benefitterm, String studentid) {
		Ssbenefitst ssst = new Ssbenefitst();
		
		return ssst;
	}

	public int insertSsbenefitst(Connection conn, int benefitterm, String studentid) {
		int result = 0;
		
		return result;
	}

	public int updateSsbenefitst(Connection conn, int benefitterm, String studentid) {
		int result = 0;
		
		return result;
	}

	public int deleteSsbenefitst(Connection conn, int benefitterm, String studentid) {
		int result = 0;
		
		return result;
	};
}
