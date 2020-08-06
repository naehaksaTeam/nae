package student.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import student.model.dao.MemberDao;
import student.model.vo.Admin;
import student.model.vo.Member;
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
	
	public int deleteMember(String userid) {
		Connection conn = getConnection();
		Admin member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}
	
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}
	public Member selectMember(String userid) {
		// TODO Auto-generated method stub
		return null;
	}
	public ArrayList<Member> selectList() {
		Connection conn = getConnection();
			ArrayList<Member> list = mdao.selectList(conn);
			close(conn);
			return list;
			
		
	}
	
}
