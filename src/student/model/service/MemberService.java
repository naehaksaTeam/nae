package student.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;

import student.model.dao.MemberDao;
import student.model.vo.Admin;
import student.model.vo.Professor;
import student.model.vo.Student;

public class MemberService {
	private MemberDao mdao = new MemberDao();
	
	public MemberService() {}
	
	public Student loginCheck(String userid, String userpwd) {
			
		Connection conn = getConnection();
		Student member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}

	
}
