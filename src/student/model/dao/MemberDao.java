package student.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import student.model.vo.Member;
import student.model.vo.Student;
public class MemberDao {
   public  MemberDao() {
   }
   
   
   public int insert(Connection conn, Student student) {
      int result = 0;
      PreparedStatement pstmt = null;

      String query = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, student.getId());
         pstmt.setString(2, student.getPassword());
         pstmt.setString(3, student.getName());
         pstmt.setString(4, student.getSsn());
         pstmt.setString(5, student.getAddress());
         pstmt.setString(6, student.getPhone());
         pstmt.setString(7, student.getCategoryname());
         pstmt.setString(8, student.getGender());
         pstmt.setString(9, student.getEmail());
         pstmt.setString(10, student.getTreasure());
         
      
         
     	
	


         result = pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }

      return result;
   }
   
   //한명선택
   public Student selectOne(Connection conn, String id) {
      Student student = null;
      Statement stmt = null;
      ResultSet rset = null;

      String query = "select * from student where id="+ id;

      try {
         stmt = conn.createStatement();
         rset = stmt.executeQuery(query);

         if (rset.next()) {
            student = new Student();

            student.setId("id");
            student.setName(rset.getString("name"));
            student.setSsn(rset.getString("ssn"));
            student.setAddress(rset.getString("address"));
            student.setPhone(rset.getString("phone"));
            student.setGender(rset.getString("gender"));
            student.setEmail(rset.getString("email"));
            student.setTreasure(rset.getString("treasure"));
            student.setCategoryname(rset.getString("categoryname"));
            student.setMajorno(rset.getString("majorno"));
            student.setEntrancedate(rset.getDate("entrancedate"));
            student.setAbsencewhether(rset.getString("absencewhether"));
            student.setAbsencecount(rset.getInt("absencecount"));
            student.setSsname(rset.getString("ssname"));
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(stmt);
      }

      return student;
   }

   //전체조회
   public ArrayList<Student> selectList(Connection conn) {
      ArrayList<Student> list = new ArrayList<Student>();
      Statement stmt = null;
      ResultSet rset = null;

      String query = "select * from student";

      try {
         stmt = conn.createStatement();

         rset = stmt.executeQuery(query);

         while (rset.next()) {
            Student student = new Student();
            
            student.setId("id");
            student.setName(rset.getString("name"));
            student.setSsn(rset.getString("ssn"));
            student.setAddress(rset.getString("address"));
            student.setPhone(rset.getString("phone"));
            student.setGender(rset.getString("gender"));
            student.setEmail(rset.getString("email"));
            student.setTreasure(rset.getString("treasure"));
            student.setCategoryname(rset.getString("categoryname"));
            student.setMajorno(rset.getString("majorno"));
            student.setEntrancedate(rset.getDate("entrancedate"));
            student.setAbsencewhether(rset.getString("absencewhether"));
            student.setAbsencecount(rset.getInt("absencecount"));
            student.setSsname(rset.getString("ssname"));

            list.add(student);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(stmt);
      }

      return list;
   }

   	//정보수정
   public int update(Connection conn, Student student) {
      int result = 0;
      PreparedStatement pstmt = null;

      String query = "update student set id = ? where majorno = ?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, student.getId());
         pstmt.setString(2, student.getMajorno());

         result = pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }

      return result;
   }

   public int delete(Connection conn, String studentid) {
      int result = 0;
      PreparedStatement pstmt = null;

      String query = "delete from student where id = ?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, studentid);

         result = pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }

      return result;
   }


public Member loginCheck(Connection conn, String userid, String userpwd) {
	Member member = null;
    PreparedStatement pstmt = null;
    ResultSet rset =null;
    
    String query = "select * " + 
    		"from (" + 
    		"select id,name,ssn,address,phone,gender,email,treasure,categoryname,majorno,entrancedate,absencewhether,absencecount,ssname,password,null from student " + 
    		"union " + 
    		"select id,name,ssn,address,phone,gender,email,treasure,categoryname,majorno,null,null,null,null,password,null from professor " + 
    		"union " + 
    		"select id,name,ssn,address,phone,gender,email,null,null,null,null,null,null,null,password,adminhiredate from administrator " + 
    		") " + 
    		"where id = ? and password = ?";
    
    try {
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, userid);
       pstmt.setString(2, userpwd);
       
       rset = pstmt.executeQuery();
       
       if(rset.next()) {
          member = new Member();
          
          member.setId(userid);
          member.setPassword(userpwd);
          member.setName(rset.getString("name"));
          member.setGender(rset.getString("gender"));
          member.setPhone(rset.getString("phone"));
          member.setEmail(rset.getString("email"));
          member.setAddress(rset.getString("address"));
          member.setTreasure(rset.getString("treasure"));
          member.setSsn(rset.getString("ssn"));
          member.setAbsencecount(rset.getInt("absencecount"));
          member.setAbsencewhether(rset.getString("absencewhether"));
          //member.setAdminhiredate(rset.getDate("adminhiredate"));//인식 안됨...(확인요청)
          member.setCategoryname(rset.getString("categoryname"));
          member.setEntrancedate(rset.getDate("entrancedate"));
          member.setMajorno(rset.getString("majorno"));
          member.setSsname(rset.getString("ssname"));
          
       }
    } catch (Exception e) {
       e.printStackTrace();
    }finally {
       close(rset);
       close(pstmt);
    }
    return member;
}

//정보추가
public int insertMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getSsn());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getPhone());
			pstmt.setString(7, member.getCategoryname());
			pstmt.setString(8, member.getGender());
			pstmt.setString(9, member.getEmail());
			pstmt.setString(10, member.getTreasure());
			result = pstmt.executeUpdate();
			System.out.println("dao성공");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


public int updateMember(Connection conn, Member member) {
	
	int result = 0;
	PreparedStatement pstmt = null;
	
	String query = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPassword());
		pstmt.setString(3, member.getName());
		pstmt.setString(4, member.getSsn());
		pstmt.setString(5, member.getAddress());
		pstmt.setString(6, member.getPhone());
		pstmt.setString(7, member.getCategoryname());
		pstmt.setString(8, member.getGender());
		pstmt.setString(9, member.getEmail());
		pstmt.setString(10, member.getTreasure());
		
	
		result = pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		close(pstmt);
	}
	
	return result;

	}


public int insertStudent(Connection conn, Member member) {
	int result = 0;
    PreparedStatement pstmt = null;

    String query = "insert into student values (?,?,?,?,?,?,?,?,?,?,?,DEFAULT,DEFAULT,?,?)";

    try {
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, member.getId());
       pstmt.setString(2, member.getName());
       pstmt.setString(3, member.getSsn());
       pstmt.setString(4, member.getAddress());
       pstmt.setString(5, member.getPhone());
       pstmt.setString(6, member.getGender());
       pstmt.setString(7, member.getEmail());
       pstmt.setString(8, member.getTreasure());
       pstmt.setString(9, member.getCategoryname());
       pstmt.setString(10, member.getMajorno());
       pstmt.setDate(11, member.getEntrancedate());
       pstmt.setString(12, member.getSsname());
       pstmt.setString(13, member.getPassword());
	
       result = pstmt.executeUpdate();

    } catch (Exception e) {
       e.printStackTrace();
    } finally {
       close(pstmt);
    }
    return result;
}


public int insertProfessor(Connection conn, Member member) {
	int result = 0;
    PreparedStatement pstmt = null;

    String query = "insert into professor values (?,?,?,?,?,?,?,?,?,?,?)";

    try {
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, member.getId());
       pstmt.setString(2, member.getName());
       pstmt.setString(3, member.getSsn());
       pstmt.setString(4, member.getAddress());
       pstmt.setString(5, member.getPhone());
       pstmt.setString(6, member.getGender());
       pstmt.setString(7, member.getEmail());
       pstmt.setString(8, member.getTreasure());
       pstmt.setString(9, member.getCategoryname());
       pstmt.setString(10, member.getMajorno());
       pstmt.setString(11, member.getPassword());
	
       result = pstmt.executeUpdate();

    } catch (Exception e) {
       e.printStackTrace();
    } finally {
       close(pstmt);
    }

    return result;
}


public int insertAdmin(Connection conn, Member member) {
	int result = 0;
    PreparedStatement pstmt = null;

    String query = "insert into administrator values ('A006','제이슨','432321-334223','미쿡','0988777','M','sdfs@asd.com','asd','20/12/22','MTIzNA==')";

    try {
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, member.getId());
       pstmt.setString(2, member.getName());
       pstmt.setString(3, member.getSsn());
       pstmt.setString(4, member.getAddress());
       pstmt.setString(5, member.getPhone());
       pstmt.setString(6, member.getGender());
       pstmt.setString(7, member.getEmail());
       pstmt.setString(8, member.getTreasure());
       pstmt.setDate(9, member.getAdminhiredate());
       pstmt.setString(10, member.getPassword());
	
       result = pstmt.executeUpdate();

    } catch (Exception e) {
       e.printStackTrace();
    } finally {
       close(pstmt);
    }

    return result;
}
}