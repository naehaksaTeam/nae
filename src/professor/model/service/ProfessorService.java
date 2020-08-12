package professor.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;


import professor.model.dao.ProfessorDao;
import student.model.vo.Professor;

public class ProfessorService {
	//의존성 주입 (DI : Dependancy Injection)
		private ProfessorDao pdao = new  ProfessorDao();
		
		public ProfessorService() {}
		
		public Professor selectOne(String id, String treasure ) {
			Connection conn = getConnection();
			Professor professor = pdao.selectOne(conn, id, treasure);
			close(conn);
			return professor;
		}
}
