package student.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

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

	public int insertMember(Member member,String who) {
		Connection conn = getConnection();
		
		int result = 0;
		
		if(who.equals("student")) {
			result = mdao.insertStudent(conn, member);
		}else if(who.equals("professor")) {
			result = mdao.insertProfessor(conn, member);
		}else {
			result = mdao.insertAdmin(conn, member);
		}
		
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
		
	}

	public int updateMember(Member member) {
		Connection conn = getConnection();
		int result = mdao.updateMember(conn, member);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	
}
