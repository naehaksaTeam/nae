package student.model.service;

import static common.JDBCTemp.*;

import java.sql.Connection;

import student.model.dao.MemberDao;
import student.model.vo.Member;

public class MemberService {
	private MemberDao mdao = new MemberDao();
	
	public MemberService() {}
	
	public Member loginCheck(String userid, String userpwd) {
			
		Connection conn = getConnection();
		Member member = mdao.loginCheck(conn, userid, userpwd);
		close(conn);
		return member;
	}


	public int updateAbsenceY(String studentid) {
		Connection conn = getConnection();
		int result = mdao.updateAbsenceY(conn, studentid);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	public int updateAbsenceN(String studentid) {
		Connection conn = getConnection();
		int result = mdao.updateAbsenceN(conn, studentid);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
}
