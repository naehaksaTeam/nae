package attendance.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import attendance.model.vo.Atndn;
import lecture.model.vo.Lecture;

public class AtndnDao {
	
	public AtndnDao() {
		super();
	}

	
//select 내 강의목록(리스트-> lecture꺼 갖다쓰려면?? studentname??) 
	//view 쓸 수 있나?  //vo 만들기?? 
	public ArrayList<Atndn> selectMyLctr(Connection conn, String id) {
		ArrayList<Atndn> list = new ArrayList<Atndn>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select sid, semester, lcode, category, lname, lpoint, capacity, ltime, pname from AtndnView where sid = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rset = pstmt.executeQuery(); 
			while(rset.next()) {
				Atndn atndn = new Atndn();
				
				atndn.setSemester(rset.getString("semester"));
				atndn.setLcode(rset.getString("lcode"));
				atndn.setCategory(rset.getString("category"));
				atndn.setLname(rset.getString("lname"));
				atndn.setLtime(rset.getString("ltime"));
				atndn.setLpoint(rset.getInt("lpoint"));
				atndn.setCapacity(rset.getInt("capacity"));
				atndn.setProfessorname(rset.getString("pname"));
				list.add(atndn);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return list;
	}
	//select 나의 출결현황 
		public ArrayList<Atndn> AtndnList(Connection conn, String id) {
			ArrayList<Atndn> list = new ArrayList<Atndn>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String query = "select sid, category, lcode, lname, ltime, lpoint, room, pname ,absent3,"
					+ "week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15, week16"
					+ "from AtndnView where sid = ? and lcode = ?";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, id);
				StringBuffer week = new StringBuffer();
				rset = pstmt.executeQuery(); 
				while(rset.next()) {
					Atndn atndn = new Atndn();
					
					atndn.setStudentid(rset.getString("id"));
					atndn.setCategory(rset.getString("category"));
					atndn.setLcode(rset.getString("lcode"));
					atndn.setLname(rset.getString("lname"));
					atndn.setLtime(rset.getString("ltime"));
					atndn.setLpoint(rset.getInt("lpoint"));
					atndn.setRoom(rset.getString("room"));
					atndn.setProfessorname(rset.getString("name"));
					atndn.setAbsent3((rset.getString("absent3").equals("Y"))?"출석미달":"-");
					
					for(int i=1;i<=16;i++) {
						week.append("atndn.setWeek"+i+"(rset.getString(\"week"+i+"\"));\n");
					}
					week.toString();
					System.out.println(week);
						
					list.add(atndn);
				}

		}catch (Exception e) {
			e.printStackTrace();
		}finally {
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
			
			while(rset.next()) {
				Lecture lctr = new Lecture();

				//sql 순서 바꾸기 
				list.add(lctr);
			}
			rset = pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return list;
	}
	
	
	
//insert 아니고 update 강의 출결입력 (교수, 개별)
	
	public int insertAtndn(Connection conn, String lcode, String thisweek, int field, String studentid ) {
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
		}finally {
			close(pstmt);
		}

		return result;
	}	
	
//update 강의 출결입력(교수, 다중선택)
	
	public int insertAtndns(Connection conn, String lcode, String thisweek, int field, String[] ids) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String params = "";
		
		for(int i=0;i<ids.length; i++) {
			params += "?";
			
			if(i < ids.length-1) {
				params += ",";
			}
		}

		
		//this week 를 날짜로 구하는게 더 나을거같기두 
		String query = "update attendance set ? = ? where lcode = ? and studentid in (" + params + ") "; 
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, thisweek);
			pstmt.setInt(2, field);
			pstmt.setString(3, lcode);
			for(int i=0;i<ids.length; i++) {
				pstmt.setString(i+2, ids[i]);
			}
		
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}	
	
//update 강의 출결수정(교수, 개별)
	
	
//update 강의 출결수정(교수, 다중선택)
	

//delete 강의 출결삭제 (교수, 개별선택)
	

//delete 강의 출결삭제(교수, 다중선택) -> 그냥 default 값으로update? 일단 만듦  
	
	
	
	
}
