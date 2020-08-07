package student.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;

import student.model.dao.MemberDao;
import student.model.vo.Member;
import student.model.vo.Student;

public class MemberService {
	private MemberDao mdao = new MemberDao();
	
	public MemberService() {}
	
	public Member loginCheck(String userid, String userpwd) {
			
		Connection conn = getConnection();
		Member member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}

	
}
