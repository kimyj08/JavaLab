package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOcibook {
	
	public static int insert(String cname, String cbirth, String cgender, String ciname1, String ciname2, String ciname3, String cft, String cdesc, String cowner, String caddr)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO cibook (cname,cbirth,cgender,ciname1,ciname2,ciname3,cft,cdesc,cowner,caddr) VALUES(?,?,?,?,?,?,?,?,?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cname);
			pstmt.setString(2, cbirth);
			pstmt.setString(3, cgender);
			pstmt.setString(4, ciname1);
			pstmt.setString(5, ciname2);
			pstmt.setString(6, ciname3);
			pstmt.setString(7, cft);
			pstmt.setString(8, cdesc);
			pstmt.setString(9, cowner);
			pstmt.setString(10, caddr);
			
		int result=pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}	
	
	public static ArrayList<DTOcibook> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM cibook";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOcibook> c=new ArrayList<DTOcibook>();
		
		while(rs.next()) {
			c.add(new DTOcibook(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6),
							   rs.getString(7),
							   rs.getString(8),
							   rs.getString(9),
							   rs.getString(10),
							   rs.getString(11),
							   rs.getString(12)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return c;
		
	}
	
	public static ArrayList<DTOcibook> getMylist() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM cibook WHERE cowner=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOcibook> c=new ArrayList<DTOcibook>();
		
		while(rs.next()) {
			c.add(new DTOcibook(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6),
							   rs.getString(7),
							   rs.getString(8),
							   rs.getString(9),
							   rs.getString(10),
							   rs.getString(11),
							   rs.getString(12)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return c;
		
	}
	
	public static DTOcibook getDetail(String cid) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM cibook WHERE cid=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, cid);
		rs=stmt.executeQuery();
		
		rs.next();
		
		cid=rs.getString(1);
		String cname=rs.getString(2);
		String cbirth=rs.getString(3);
		String cgender=rs.getString(4);
		String ciname1=rs.getString(5);
		String ciname2=rs.getString(6);
		String ciname3=rs.getString(7);
		String cft=rs.getString(8);
		String cdesc=rs.getString(9);
		String cowner=rs.getString(10);
		String cdate=rs.getString(11);
		String caddr=rs.getString(12);
		
		DTOcibook product=new DTOcibook(cid,cname,cbirth,cgender,ciname1,ciname2,ciname3,cft,cdesc,cowner,cdate,caddr);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return product;
		
	}
	
}
