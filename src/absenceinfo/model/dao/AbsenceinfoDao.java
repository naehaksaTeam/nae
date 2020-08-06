package absenceinfo.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import absenceinfo.model.vo.Absenceinfo;

public class AbsenceinfoDao {
	public AbsenceinfoDao () {}
	
	public  Absenceinfo selectInfo(Connection conn) {
		Absenceinfo info = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from absenceinfor";
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				info = new Absenceinfo(rset.getString("information"));
			}
			System.out.println(info);
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(stmt);
		return info;
	}
	
	public int updateInfo(Connection conn) {
		int result = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from absenceinfo";
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(stmt);
		return result;
	}
}
