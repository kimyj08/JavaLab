package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOcibook {
	
	public static int insert(String cname, String cbirth, String cgender, String ciname1, String ciname2, String ciname3, String ciname4, String ciname5, String cdesc, String ccolor, String cctgr)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO cibook (cname,cbirth,cgender,ciname1,ciname2,ciname3,ciname4,ciname5,cdesc,ccolor,cctgr) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cname);
			pstmt.setString(2, cbirth);
			pstmt.setString(3, cgender);
			pstmt.setString(4, ciname1);
			pstmt.setString(5, ciname2);
			pstmt.setString(6, ciname3);
			pstmt.setString(7, ciname4);
			pstmt.setString(8, ciname5);
			pstmt.setString(9, cdesc);
			pstmt.setString(10, ccolor);
			pstmt.setString(11, cctgr);
			
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
							   rs.getString(12),
							   rs.getString(13)));
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
		String ciname4=rs.getString(8);
		String ciname5=rs.getString(9);
		String cdesc=rs.getString(10);
		String ccolor=rs.getString(11);
		String cctgr=rs.getString(12);
		String cdate=rs.getString(13);
		
		DTOcibook product=new DTOcibook(cid,cname,cbirth,cgender,ciname1,ciname2,ciname3,ciname4,ciname5,cdesc,ccolor,cctgr,cdate);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return product;
		
	}
	
}
