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
	public Student loginCheckStudent(String userid, String userpwd) {
			
		Connection conn = getConnection();
		Student member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}

	public Professor loginCheckProfessor(String userid, String userpwd) {
		Connection conn = getConnection();
		Professor member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}

	public Admin loginCheckAdmin(String userid, String userpwd) {
		Connection conn = getConnection();
		Admin member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}
	
}
