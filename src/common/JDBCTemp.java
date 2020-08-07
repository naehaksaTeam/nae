package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JDBCTemp {
	
	/*
	 * public static Connection getConnection() { Connection conn = null; Properties
	 * p = new Properties(); try {
	 * 
	 * String cp = JDBCTemp.class.getResource("./").getPath(); p.load(new
	 * FileReader(cp + "jdbc.properties"));
	 * 
	 * String driver = p.getProperty("driver"); String url = p.getProperty("url");
	 * String user = p.getProperty("user"); String passwd = p.getProperty("passwd");
	 * Class.forName(driver); conn = DriverManager.getConnection(url,user,passwd);
	 * conn.setAutoCommit(false); } catch (FileNotFoundException e) {
	 * e.printStackTrace(); } catch (IOException e) { e.printStackTrace(); } catch
	 * (ClassNotFoundException e) { e.printStackTrace(); } catch (SQLException e) {
	 * e.printStackTrace(); }
	 * 
	 * return conn; }
	 */

	public static Connection getConnection() {
	      Connection conn = null;
     
	      try {
	         //context.xml 의 리소스 엘리먼트의 설정값을 읽어와서 dbcp에서 커넥션을 받도록 처리
	    	 Context initContext = new InitialContext();
	         DataSource ds = (DataSource)initContext.lookup("java:comp/env/jdbc/myoracle");
	         conn = ds.getConnection();
	         conn.setAutoCommit(false);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	     
	      return conn;
	   }

	
	
	
	public static void close(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			conn.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection conn) {
		try {
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
