package student.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;

import student.model.dao.AdminDao;
import student.model.vo.Admin;



public class AdminService {
	private AdminDao adao = new  AdminDao();
	
	public AdminService() {}

	public Admin selectOne(String id, String treasure ) {
		Connection conn = getConnection();
		Admin admin = adao.selectOne(conn, id, treasure);
		close(conn);
		return admin;
	}
}
