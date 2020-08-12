package student.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.getConnection;

import java.sql.Connection;

import student.model.dao.StudentDao;
import student.model.vo.Student;



public class StudentService {
private StudentDao sdao = new  StudentDao();
	
	

	public StudentService() {
}



	public Student selectOne(String id, String treasure ) {
		Connection conn = getConnection();
		Student student = sdao.selectOne(conn, id, treasure);
		close(conn);
		return student;
	}
}
