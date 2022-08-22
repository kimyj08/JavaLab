package db;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOmember0822 {

	public static int join(String mname, String mpass, String mtel, String memail, String mgender, String maddr, String miname) throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO member (mname,mpass,mtel,memail,mgender,maddr,miname) VALUES(?,?,?,?,?,?,?)";
		
		conn=ConnectionPool.get();  // 예외처리를 강제하는 애들. 예외처리도 처리해주자.
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,mname);
			stmt.setString(2,mpass);
			stmt.setString(3,mtel);
			stmt.setString(4,memail);
			stmt.setString(5,mgender);
			stmt.setString(6,maddr);
			stmt.setString(7,miname);
			
		int result=stmt.executeUpdate();
		
		return result;

	}
	
	public static int login(String mname, String mpass) throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT mname,mpass FROM member WHERE mname=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, mname);
			
		rs=stmt.executeQuery();
		
		if(!rs.next()) {
			return 3; // 아이디, 비번 모두 없는 비회원.
		}
		
		if(mpass.equals(rs.getString("mpass"))) {
			return 1;
		} else {
			return 2;
		}
		
	}
	
}
