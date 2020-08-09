package lecture.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import lecture.model.dao.LectureDao;
import lecture.model.vo.Lecture;
import lecture.model.vo.TimeTable;

public class LectureService {

	private LectureDao ldao = new LectureDao();

	public LectureService() {

	}

	public Lecture loginCheck(String id, String pw) {
		Connection conn = getConnection();
		Lecture member = ldao.loginCheck(conn, id, pw);
		close(conn);
		return member;
	}

	public int insertLecture(Lecture member) {
		Connection conn = getConnection();
		int result = ldao.insertLecture(conn, member);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public Lecture selectLecture(String userid) {

		Connection conn = getConnection();
		Lecture member = ldao.selectLecture(conn, userid);
		close(conn);
		return member;

	}

	public String deleteLecture(String lecture) {
		//개설된 강좌 내리기
		String r = "";
		
		Connection conn = getConnection();
		r = ldao.selectRoom(conn,lecture);
		close(conn);
		if(r.equals(lecture)) {
			conn = getConnection();
			ldao.deleteLecture(conn, lecture);
			commit(conn);
			close(conn);
		}
		return r;
	}

	public int updateLecture(Lecture member) {
		Connection conn = getConnection();
		int result = ldao.updateLecture(conn, member);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public ArrayList<Lecture> selectList() {
		Connection conn = getConnection();
		ArrayList<Lecture> result = ldao.selectList(conn);
		close(conn);
		return result;
	}

	public int upadateLoginOK(String userid, String loginok) {
		Connection conn = getConnection();
		int result = ldao.updateLoginOK(conn, userid, loginok);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public ArrayList<Lecture> selectSearchUserid(String keyword) {
		Connection conn = getConnection();
		ArrayList<Lecture> result = ldao.selectSearchUserid(conn, keyword);
		close(conn);
		return result;
	}

	public ArrayList<Lecture> selectSearchGender(String keyword) {
		Connection conn = getConnection();
		ArrayList<Lecture> result = ldao.selectSearchGender(conn, keyword);
		close(conn);
		return result;
	}

	public ArrayList<Lecture> selectSearchAge(String keyword) {
		Connection conn = getConnection();
		ArrayList<Lecture> result = ldao.selectSearchAge(conn, keyword);
		close(conn);
		return result;
	}

	public ArrayList<Lecture> selectSearchEnroll(Date begin, Date end) {
		Connection conn = getConnection();
		ArrayList<Lecture> result = ldao.selectSearchEnroll(conn, begin, end);
		close(conn);
		return result;
	}

	public ArrayList<Lecture> selectSearchLoginok(String keyword) {
		Connection conn = getConnection();
		ArrayList<Lecture> result = ldao.selectSearchLoginok(conn, keyword);
		close(conn);
		return result;
	}

	public int selectCheckId(String userid) {
		Connection conn = getConnection();
		int idcount = ldao.selectCheckId(conn, userid);
		close(conn);
		return idcount;
	}

	public ArrayList<Lecture> selectAllPlan() {
		// 강의 계획서 조회
		Connection conn = getConnection();
		ArrayList<Lecture> list = ldao.selectAllPlan(conn);
		close(conn);

		return list;
	}

	public TimeTable selecTimeTable(String studentid, String clock) {
		// 시간표 조회
		Connection conn = getConnection();
		TimeTable list = ldao.selecTimeTable(conn,studentid,clock);
		close(conn);
		if(list.getName() == null) {
			String n = "공강";
			list.setDay(n);
			list.setName(n);
			list.setTime(n);
		}
		return list;
	}

	public String createRoom(String lecture,int roommax) {
		String r = "";
		
		Connection conn = getConnection();
		r = ldao.selectRoom(conn,lecture);
		close(conn);
		if(r.equals(lecture)) {
			return "already";
		}else {
			conn = getConnection();
			ldao.createRoom(conn,lecture,roommax);
			commit(conn);
			close(conn);
			conn = getConnection();
			r = ldao.selectRoom(conn,lecture);
			close(conn);
		}
		return r;
	}

	public ArrayList<Lecture> selectOpenedLectures() {
		//열려있는 강의 가져오기
		Connection conn = getConnection();
		ArrayList<Lecture> list = ldao.selectOpenedLectures(conn);
		close(conn);

		return list;
	}

	public int applyLecture(String lname, String name) {
		//수강신청버튼구현
		int r = 0;
		Connection conn = getConnection();
		r = ldao.applyLecture(conn,lname,name);
		if(r > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return r;
	}
}
