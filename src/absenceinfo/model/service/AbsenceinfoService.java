package absenceinfo.model.service;

import absenceinfo.model.dao.AbsenceinfoDao;
import absenceinfo.model.vo.Absenceinfo;
import static common.JDBCTemp.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class AbsenceinfoService {
	AbsenceinfoDao infodao = new AbsenceinfoDao();
	
	public  Absenceinfo selectInfo() {
		Connection conn = getConnection();
		Absenceinfo info = infodao.selectInfo(conn);
		close(conn);
		return info;
	}
	
	public  int updateInfo() {
		Connection conn = getConnection();
		int result = infodao.updateInfo(conn);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
}
	
