package professor.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import professor.model.vo.Professor;

	public class ProfessorService {
		
		private ProfessorDao pdao = new Professor();
		
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

		public Student selectOne(String professorId) {
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

		public int update(ProfessorVo professor) {
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










}
