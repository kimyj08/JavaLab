package db;

import java.sql.*;
import java.util.ArrayList;

// 예외처리 하면서 생긴 것.
import javax.naming.NamingException;

import util.*;

public class DAOboard0822 {
	
	public static int boardinsert(String title, String content, String author) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO board (title,content,author) VALUES(?,?,?)";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,title);
			stmt.setString(2,content);
			stmt.setString(3,author);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static int boardupdate(String title, String content, String bid) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="UPDATE board SET title=?,content=? WHERE bid=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,title);
			stmt.setString(2,content);
			stmt.setString(3,bid);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static ArrayList<DTOboard0822> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM board";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOboard0822> b=new ArrayList<DTOboard0822>();
		
		while(rs.next()) {
			b.add(new DTOboard0822(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return b;
	}
	
	public static DTOboard0822 getDetail(String bid) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM board WHERE bid=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, bid);
		rs=stmt.executeQuery();
		
		rs.next();
		
		bid=rs.getString(1);
		String title=rs.getString(2);
		String content=rs.getString(3);
		String author=rs.getString(4);
		String bdate=rs.getString(5);
		
		DTOboard0822 board=new DTOboard0822(bid,title,content,author,bdate);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return board;
		
	}
	
}
