package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOproduct0819 {
	
	public static int insert(String pname, String pdesc, String pprice, String pfilename1, String pfilename2, String pfilename3)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO product (pname,pdesc,pprice,pfilename1,pfilename2,pfilename3) VALUES(?,?,?,?,?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pname);
			pstmt.setString(2, pdesc);
			pstmt.setString(3, pprice);
			pstmt.setString(4, pfilename1);
			pstmt.setString(5, pfilename2);
			pstmt.setString(6, pfilename3);
			
		int result=pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}	
	
	public static ArrayList<DTOproduct0819> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM product";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOproduct0819> p=new ArrayList<DTOproduct0819>();
		
		while(rs.next()) {
			p.add(new DTOproduct0819(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6),
							   rs.getString(7)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return p;
		
	}
	
	public static DTOproduct0819 getDetail(String pid) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM product WHERE pid=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, pid);
		rs=stmt.executeQuery();
		
		rs.next();
		
		pid=rs.getString(1);
		String pname=rs.getString(2);
		String pdesc=rs.getString(3);
		String pprice=rs.getString(4);
		String pfilename1=rs.getString(5);
		String pfilename2=rs.getString(6);
		String pfilename3=rs.getString(7);
		
		DTOproduct0819 product=new DTOproduct0819(pid,pname,pdesc,pprice,pfilename1,pfilename2,pfilename3);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return product;
		
	}
	
}
