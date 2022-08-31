package db;

import java.sql.*;

public class DbConnClose {
	
	public static Connection getConnection() {
		
		String driverClass="com.mysql.jdbc.Driver";
		
		try {
			Class.forName(driverClass);
		} catch(ClassNotFoundException e) {
			System.out.println("JDBC Driver Err.");
		}
		
		Connection conn=null;
		
		String url="jdbc:mysql://localhost:3306/kmyj0226";
		String id="kmyj0226";
		String pw="dpwndpwn08!!";
		
		try {
			conn=DriverManager.getConnection(url,id,pw);
		} catch(SQLException e) {
			System.out.println("DB Connection Err.");
		}
		
		return conn;
	}
}
