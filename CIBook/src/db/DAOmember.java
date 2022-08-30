package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOmember {
	
	public static int join(String mnick, String mpass, String mtel, String memail, String mgender, String miname) throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO member (mnick,mpass,mtel,memail,mgender,miname) VALUES(?,?,?,?,?,?)";
		
		conn=ConnectionPool.get();  // 예외처리를 강제하는 애들. 예외처리도 처리해주자.
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,mnick);
			stmt.setString(2,mpass);
			stmt.setString(3,mtel);
			stmt.setString(4,memail);
			stmt.setString(5,mgender);
			stmt.setString(6,miname);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;

	}
	
	public static int login(String mnick, String mpass) throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT mnick,mpass FROM member WHERE mnick=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, mnick);
			
		rs=stmt.executeQuery();
		
		if(!rs.next()) {
			return 3; // 아이디, 비번 모두 없는 비회원.
		}
		
		if(mpass.equals(rs.getString("mpass"))) {
			return 1; // 문제 없는 회원.
		} else {
			return 2; // 비번이 틀린 회원.
		}
		
	}
	
	public static int kakaologin(String mnick) throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT mnick FROM member WHERE mnick=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, mnick);
			
		rs=stmt.executeQuery();
		
		if(!rs.next()) {
			return 3; // 아이디, 비번 모두 없는 비회원. -> 회원 가입.
		} else {
			return 1; // 없어도 되는데 오류나서 임시로.
		}
		
	}
	
	public static int update(String mpass, String mtel, String memail, String mgender, String miname, String mnick) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="UPDATE member SET mpass=?,mtel=?,memail=?,mgender=?,miname=? WHERE mnick=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,mnick);
			stmt.setString(2,mpass);
			stmt.setString(3,mtel);
			stmt.setString(4,memail);
			stmt.setString(5,mgender);
			stmt.setString(6,miname);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static ArrayList<DTOmember> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM member";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOmember> m=new ArrayList<DTOmember>();
		
		while(rs.next()) {
			m.add(new DTOmember(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6),
							   rs.getString(7),
							   rs.getString(8),
							   rs.getString(9)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return m;
	}
	
	public static DTOmember getDetail(String mnick) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM member WHERE mnick=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, mnick);
		rs=stmt.executeQuery();
		
		rs.next();
		
		String mno=rs.getString(1);
		mnick=rs.getString(2);
		String mpass=rs.getString(3);
		String mtel=rs.getString(4);
		String memail=rs.getString(5);
		String mgender=rs.getString(6);
		String miname=rs.getString(7);
		String mlevel=rs.getString(8);
		String mdate=rs.getString(9);
		
		DTOmember member=new DTOmember(mno,mnick,mpass,mtel,memail,mgender,miname,mlevel,mdate);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return member;
		
	}
	
	public static int memberout(String mnick, String mpass) throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="DELETE FROM member WHERE (mnick=?)and(mpass=?)";
		
		conn=ConnectionPool.get();  // 예외처리를 강제하는 애들. 예외처리도 처리해주자.
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,mnick);
			stmt.setString(2,mpass);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;

	}
	
}
