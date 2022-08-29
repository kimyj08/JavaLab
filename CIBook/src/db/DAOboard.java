package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOboard {

	public static int boardinsert(String btitle, String bcontent, String bauthor) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO board (btitle,bcontent,bauthor) VALUES(?,?,?)";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,btitle);
			stmt.setString(2,bcontent);
			stmt.setString(3,bauthor);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static int boardupdate(String btitle, String bcontent, String bid) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="UPDATE board SET btitle=?,bcontent=? WHERE bid=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,btitle);
			stmt.setString(2,bcontent);
			stmt.setString(3,bid);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static ArrayList<DTOboard> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM board";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOboard> b=new ArrayList<DTOboard>();
		
		while(rs.next()) {
			b.add(new DTOboard(rs.getString(1),
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
	
	public static DTOboard getDetail(String bid) throws SQLException, NamingException {
		
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
		String btitle=rs.getString(2);
		String bcontent=rs.getString(3);
		String bauthor=rs.getString(4);
		String bdate=rs.getString(5);
		
		DTOboard board=new DTOboard(bid,btitle,bcontent,bauthor,bdate);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return board;
		
	}
	
}
