package professor.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import student.model.vo.Professor;
import student.model.vo.Student;
public class ProfessorDao {
   public  ProfessorDao() {
   }
   
   
   public int insert(Connection conn, Professor professor) {
      int result = 0;
      PreparedStatement pstmt = null;

      String query = "insert into student values (?, ?, ?, ?, ?, default, ?, ?, ?, ?,sysdate,defalut,defalut,default)";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, student.getId());
         pstmt.setString(2, student.getName());
         pstmt.setString(3, student.getSsn());
         pstmt.setString(4, student.getAddress());
         pstmt.setString(5, student.getPhone());
         pstmt.setString(6, student.getEmail());
         pstmt.setString(7, student.getTreasure());
         pstmt.setString(8, student.getCategoryname());
         pstmt.setString(9, student.getMajorno());
         pstmt.setString(10, student.getSsname());

         result = pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }

      return result;
   }
   
   //학생 한명선택
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
            student.setPassword(rset.getString("password"));
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
            student.setPassword(rset.getString("password"));

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

   public int delete(Connection conn, String id) {
      int result = 0;
      PreparedStatement pstmt = null;

      String query = "delete from student where id = ?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, id);

         result = pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }

      return result;
   }

}