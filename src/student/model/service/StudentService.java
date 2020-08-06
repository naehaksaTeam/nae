package student.model.service;
import java.lang.reflect.Member;
import java.sql.Connection;
import java.util.ArrayList;
import student.model.dao.StudentDao;
import student.model.vo.Student;
import static common.JDBCTemp.*;
public class StudentService {
	
	private StudentDao sdao = new StudentDao();
	
	public StudentService() {}

	public int insert(Student student) {
		Connection conn = getConnection();
		int result = sdao.insert(conn, student);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public Student selectOne(String studentId) {
		Connection conn = getConnection();
		Student student = sdao.selectOne(conn, studentId);
		close(conn);
		return student;
	}

	public ArrayList<Student> selectList() {
		Connection conn = getConnection();
		ArrayList<Student> list = sdao.selectList(conn);
		close(conn);
		return list;
	}

	public int update(Student student ) {
		Connection conn = getConnection();
		int result = sdao.update(conn, student);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public int delete(String studentId) {
		Connection conn = getConnection();
		int result = sdao.delete(conn, studentId);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
}







