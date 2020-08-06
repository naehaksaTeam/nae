package admin.model.service;


import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import admin.model.dao.AdminDao;
import admin.model.vo.Admin;

public class AdminService {
	
	private AdminDao adao = new AdminDao();
	
	public AdminService() {}

	public int insert(Admin admin) {
		Connection conn = getConnection();
		int result = adao.insert(conn, admin);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public Admin selectOne(String adminid) {
		Connection conn = getConnection();
		Admin admin = adao.selectOne(conn, adminid);
		close(conn);
		return admin;
	}

	public ArrayList<Admin> selectList() {
		Connection conn = getConnection();
		ArrayList<Admin> list = adao.selectList(conn);
		close(conn);
		return list;
	}

	public int update(Admin admin) {
		Connection conn = getConnection();
		int result = adao.update(conn, admin);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public int delete(String adminid) {
		Connection conn = getConnection();
		int result = adao.delete(conn, adminid);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
}








