package day31;

import java.sql.*;

public class DbConnClose {

	public static Connection getConnection() {
		
		String driverClass="com.mysql.jdbc.Driver";
		
		try {
			// 예외처리 옵션이 필수인 구문
			Class.forName(driverClass);
		} catch(ClassNotFoundException e) {
			System.out.println("JDBC Driver Err.");
		}
		
	// 3.Connection Object
		Connection conn=null;

		String url="jdbc:mysql://localhost:3306/exam";
		String id="root";
		String pw="0000";
		
		try {
			// 예외처리 옵션이 필수인 구문
			conn=DriverManager.getConnection(url,id,pw);
		} catch(SQLException e) {
			System.out.println("DB Connection Err.");
		}
		
	// 4.Statement Object
	//	PreparedStatement pstmt=null; 클라스로 만들면서 필요없게 됨.
		
		return conn;
	}
	// 이렇게 하면 여는 것 완성. 닫는 것은 어차피 안쓰일 거라서 안해봄.
	
}
