package professor.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import professor.model.dao.ProfessorDao;
import professor.model.vo.Professor;
import student.model.vo.Student;

	public class ProfessorService {
		
		private ProfessorDao pdao = new ProfessorDao();
		
		public ProfessorService() {}

		public int insert(Professor professor) {
			Connection conn = getConnection();
			int result = pdao.insert(conn, professor);
			if(result > 0)
				commit(conn);
			else
				rollback(conn);
			close(conn);
			return result;
		}

		public Professor selectOne(String professorId) {
			Connection conn = getConnection();
			Professor professor = pdao.selectOne(conn, professorId);
			close(conn);
			return professor;
		}

		public ArrayList<Professor> selectList() {
			Connection conn = getConnection();
			ArrayList<Professor> list = pdao.selectList(conn);
			close(conn);
			return list;
		}

		public int update(Professor professor) {
			Connection conn = getConnection();
			int result = pdao.update(conn, professor);
			if(result > 0)
				commit(conn);
			else
				rollback(conn);
			close(conn);
			return result;
		}

		public int delete(String professorId) {
			Connection conn = getConnection();
			int result = pdao.delete(conn, professorId);
			if(result > 0)
				commit(conn);
			else
				rollback(conn);
			close(conn);
			return result;
		}
	}











