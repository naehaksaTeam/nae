package attendance.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import attendance.model.vo.Atndn;
import lecture.model.vo.Lecture;

public class AtndnDao {

	public AtndnDao() {
		super();
	}

	public ArrayList<Atndn> selectMyLctr(Connection conn, String id) {
		ArrayList<Atndn> list = new ArrayList<Atndn>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select sid, semester, lcode, category, lname, lpoint, capacity, ltime, pname from AtndnView where sid = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Atndn atndn = new Atndn();

				atndn.setSemester(rset.getString("semester"));
				atndn.setLcode(rset.getString("lcode"));
				atndn.setCategory(rset.getString("category"));
				atndn.setLname(rset.getString("lname"));
				atndn.setLtime(rset.getString("ltime"));
				atndn.setLpoint(rset.getInt("lpoint"));
				atndn.setCapacity(rset.getInt("capacity"));
				atndn.setPname(rset.getString("pname"));
				list.add(atndn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return list;
	}


	// select 출결현황
	public ArrayList<Atndn> selectLctrAtndn(Connection conn, String sid, String lcode) {
		ArrayList<Atndn> list = new ArrayList<Atndn>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select sid, category, lcode, lname, ltime, lpoint, room, pname ,absent3,"
				+ "week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15, week16 "
				+ "from AtndnView where sid = ? and lcode = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sid);
			pstmt.setString(2, lcode);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Atndn atndn = new Atndn();

				atndn.setSid(rset.getString("sid"));
				atndn.setCategory(rset.getString("category"));
				atndn.setLcode(rset.getString("lcode"));
				atndn.setLname(rset.getString("lname"));
				atndn.setLtime(rset.getString("ltime"));
				atndn.setLpoint(rset.getInt("lpoint"));
				atndn.setRoom(rset.getString("room"));
				atndn.setPname(rset.getString("pname"));
				atndn.setAbsent3((rset.getString("absent3").equals("Y")) ? "출석미달" : "-");
				atndn.setWeek1(rset.getString("week1"));
				atndn.setWeek2(rset.getString("week2"));
				atndn.setWeek3(rset.getString("week3"));
				atndn.setWeek4(rset.getString("week4"));
				atndn.setWeek5(rset.getString("week5"));
				atndn.setWeek6(rset.getString("week6"));
				atndn.setWeek7(rset.getString("week7"));
				atndn.setWeek8(rset.getString("week8"));
				atndn.setWeek9(rset.getString("week9"));
				atndn.setWeek10(rset.getString("week10"));
				atndn.setWeek11(rset.getString("week11"));
				atndn.setWeek12(rset.getString("week12"));
				atndn.setWeek13(rset.getString("week13"));
				atndn.setWeek14(rset.getString("week14"));
				atndn.setWeek15(rset.getString("week15"));
				atndn.setWeek16(rset.getString("week16"));

				list.add(atndn);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return list;
	}

//select 강의 주차별 (selectone) 
//	public Atndn selectOneLctr(Connection conn, String id, String lcode) {
//		ArrayList<Atndn> list = new ArrayList<Atndn>();
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		
//		String query = "select studentid, category, lcode, lname, ltime, professorname ,absent3,"
//				+ "week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15, week16"
//				+ "from AtndnView where id = ? and lcode = ?";
//		
//		try {
//			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, id);
//			
//			rset = pstmt.executeQuery(); 
//			while(rset.next()) {
//				Atndn atndn = new Atndn();
//				
//				atndn.setStudentid(rset.getString("studentid"));
//				atndn.setCategory(rset.getString("category"));
//				atndn.setLcode(rset.getString("lcode"));
//				atndn.setLname(rset.getString("lname"));
//				atndn.setLtime(rset.getString("ltime"));
//				atndn.setProfessorname(rset.getString("professorname"));
//				atndn.setAbsent3((rset.getString("absent3").equals("Y"))?"출석미달":"-");
//				atndn.setLcode(rset.getString("category"));
//				
//				
//				atndn.setLpoint(rset.getInt("lpoint"));
//				atndn.setCapacity(rset.getInt("capacity"));
//				
//				list.add(atndn);
//			}
//		
//		}
//		return list;
//	}

//select 강의 학기별 (리스트, 
	public ArrayList selectMyTermLctr(Connection conn, String studentid) {
		ArrayList list = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from AtndnView";

		try {
			pstmt = conn.prepareStatement(query);

			while (rset.next()) {
				Lecture lctr = new Lecture();

				// sql 순서 바꾸기
				list.add(lctr);
			}
			rset = pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return list;
	}

//insert 아니고 update 강의 출결입력 (교수, 개별)

	public int insertAtndn(Connection conn, String lcode, String thisweek, int field, String studentid) {
		int result = 0;
		PreparedStatement pstmt = null;
		String params = "";

		String query = "update attendance set ? = ? where lcode = ? and studentid = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, thisweek);
			pstmt.setInt(2, field);
			pstmt.setString(3, lcode);
			pstmt.setString(4, studentid);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

//update 강의 출결입력(교수, 다중선택)

	public int insertAtndns(Connection conn, String lcode, String thisweek, int field, String[] ids) {
		int result = 0;
		PreparedStatement pstmt = null;

		String params = "";

		for (int i = 0; i < ids.length; i++) {
			params += "?";

			if (i < ids.length - 1) {
				params += ",";
			}
		}

		// this week 를 날짜로 구하는게 더 나을거같기두
		String query = "update attendance set ? = ? where lcode = ? and studentid in (" + params + ") ";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, thisweek);
			pstmt.setInt(2, field);
			pstmt.setString(3, lcode);
			for (int i = 0; i < ids.length; i++) {
				pstmt.setString(i + 2, ids[i]);
			}

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

//update 강의 출결수정(교수, 개별)

//update 강의 출결수정(교수, 다중선택)

//delete 강의 출결삭제 (교수, 개별선택)

//delete 강의 출결삭제(교수, 다중선택) -> 그냥 default 값으로update? 일단 만듦  

	public ArrayList<Atndn> searchAtndn(Connection conn, String sid, String lcode) {
		ArrayList<Atndn> list = new ArrayList<Atndn>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select sid, category, lcode, lname, ltime, lpoint, room, pname ,absent3,"
				+ "week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15, week16 "
				+ "from AtndnView where sid = ? and lcode = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sid);
			pstmt.setString(2, lcode);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Atndn atndn = new Atndn();

				atndn.setSid(rset.getString("sid"));
				atndn.setCategory(rset.getString("category"));
				atndn.setLcode(rset.getString("lcode"));
				atndn.setLname(rset.getString("lname"));
				atndn.setLtime(rset.getString("ltime"));
				atndn.setLpoint(rset.getInt("lpoint"));
				atndn.setRoom(rset.getString("room"));
				atndn.setPname(rset.getString("pname"));
				atndn.setAbsent3((rset.getString("absent3").equals("Y")) ? "출석미달" : "-");
				atndn.setWeek1(rset.getString("week1"));
				atndn.setWeek2(rset.getString("week2"));
				atndn.setWeek3(rset.getString("week3"));
				atndn.setWeek4(rset.getString("week4"));
				atndn.setWeek5(rset.getString("week5"));
				atndn.setWeek6(rset.getString("week6"));
				atndn.setWeek7(rset.getString("week7"));
				atndn.setWeek8(rset.getString("week8"));
				atndn.setWeek9(rset.getString("week9"));
				atndn.setWeek10(rset.getString("week10"));
				atndn.setWeek11(rset.getString("week11"));
				atndn.setWeek12(rset.getString("week12"));
				atndn.setWeek13(rset.getString("week13"));
				atndn.setWeek14(rset.getString("week14"));
				atndn.setWeek15(rset.getString("week15"));
				atndn.setWeek16(rset.getString("week16"));

				list.add(atndn);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return list;
	}

	public ArrayList<Atndn> selectSearchUserid(Connection conn, String keyword) {
		ArrayList<Atndn> list = new ArrayList<Atndn>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select sid, category, lcode, lname, ltime, lpoint, room, pname ,absent3, thisweek, where sid = ? and lcode = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, keyword);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Atndn atndn = new Atndn();

				atndn.setSid(rset.getString("sid"));
				atndn.setCategory(rset.getString("category"));
				atndn.setLcode(rset.getString("lcode"));
				atndn.setLname(rset.getString("lname"));
				atndn.setLtime(rset.getString("ltime"));
				atndn.setLpoint(rset.getInt("lpoint"));
				atndn.setRoom(rset.getString("room"));
				atndn.setPname(rset.getString("pname"));
				atndn.setAbsent3((rset.getString("absent3").equals("Y")) ? "출석미달" : "-");
				atndn.setWeek1(rset.getString("week1"));
				atndn.setWeek2(rset.getString("week2"));
				atndn.setWeek3(rset.getString("week3"));
				atndn.setWeek4(rset.getString("week4"));
				atndn.setWeek5(rset.getString("week5"));
				atndn.setWeek6(rset.getString("week6"));
				atndn.setWeek7(rset.getString("week7"));
				atndn.setWeek8(rset.getString("week8"));
				atndn.setWeek9(rset.getString("week9"));
				atndn.setWeek10(rset.getString("week10"));
				atndn.setWeek11(rset.getString("week11"));
				atndn.setWeek12(rset.getString("week12"));
				atndn.setWeek13(rset.getString("week13"));
				atndn.setWeek14(rset.getString("week14"));
				atndn.setWeek15(rset.getString("week15"));
				atndn.setWeek16(rset.getString("week16"));

				list.add(atndn);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Atndn> selectProfAtndnList(Connection conn, String pid, String semester, String lcode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Atndn> list = new ArrayList<Atndn>();

		String query = "select distinct p.id pid, s.id sid, semester, category, l.lcode, s.name sname, l.capacity, majorname from professor p "
				+ "join lecture l on p.id=l.id join lapplication la on l.lcode=la.lcode "
				+ "join student s on s.id=la.id join major m on s.majorno = m.majorno where p.id = ? and semester = ? and l.lcode = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pid);
			pstmt.setString(2, semester);
			pstmt.setString(3, lcode);
			
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Atndn atndn = new Atndn();
				atndn.setSid(rset.getString("sid"));
				atndn.setPid(rset.getString("pid"));
				atndn.setSemester(rset.getString("semester"));
				atndn.setCategory(rset.getString("category"));
				atndn.setLcode(rset.getString("lcode"));
				atndn.setSname(rset.getString("sname"));
				atndn.setCapacity(rset.getInt("capacity"));
				atndn.setMajorname(rset.getString("majorname"));
				atndn.setLcode(rset.getString("lcode"));

				list.add(atndn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}
	
	//update Atndn 
			public int updateAtndn(Connection conn, Atndn atndn) {
				int result = 0;
				PreparedStatement pstmt = null;
				
				String query = "update Atndn set week1 =?, week2 = ?, week3 =?, week4=?, week5=?, week6=?, week7=?, "
						+ "week8 =?, week9 = ?, week10 =?, week11=?, week12=?, week13 =?, week14 = ?, week15 =?, week16=? "
						+ "where sid = ? and lcode = ?";
				
				try {
					pstmt = conn.prepareStatement(query);
					pstmt.setString(1, atndn.getWeek1());
					pstmt.setString(2, atndn.getWeek2());
					pstmt.setString(3, atndn.getWeek3());
					pstmt.setString(4, atndn.getWeek4());
					pstmt.setString(5, atndn.getWeek5());
					pstmt.setString(6, atndn.getWeek6());
					pstmt.setString(7, atndn.getWeek7());
					pstmt.setString(8, atndn.getWeek8());
					pstmt.setString(9, atndn.getWeek9());
					pstmt.setString(10, atndn.getWeek10());
					pstmt.setString(11, atndn.getWeek11());
					pstmt.setString(12, atndn.getWeek12());
					pstmt.setString(13, atndn.getWeek13());
					pstmt.setString(14, atndn.getWeek14());
					pstmt.setString(15, atndn.getWeek15());
					pstmt.setString(16, atndn.getWeek16());
					pstmt.setString(17, atndn.getSid());
					pstmt.setString(18, atndn.getLcode());
					
					result = pstmt.executeUpdate();
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					close(pstmt);
				}
				return result;
			}

			public int updateWeekAll(Connection conn, HashMap map) {
				int r = 0;
				String query ="insert into attendance values ('','','','','','','','','','','','','','','','','','','','')";
				return r;
			}
}
