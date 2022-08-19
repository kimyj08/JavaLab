package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOmember0819 {
	
	public static int join(String mname, String mtel, String iname)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO member (mname,mtel,iname) VALUES(?,?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mname);
			pstmt.setString(2, mtel);
			pstmt.setString(3, iname);
			
		int result=pstmt.executeUpdate();
		
		return result;
	}	
	
	public static ArrayList<DTOmember0819> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM member";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOmember0819> m=new ArrayList<DTOmember0819>();
		
		while(rs.next()) {
			m.add(new DTOmember0819(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6)));
		}
		
		return m;
		
	}
	
	public static DTOmember0819 getDetail(String mno) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM member WHERE mno=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, mno);
		rs=stmt.executeQuery();
		
		rs.next();
		
		mno=rs.getString(1);
		String mname=rs.getString(2);
		String mtel=rs.getString(3);
		String mlevel=rs.getString(4);
		String iname=rs.getString(5);
		String mdate=rs.getString(6);
		
		DTOmember0819 member=new DTOmember0819(mno,mname,mtel,mlevel,iname,mdate);
		
		return member;
		
	}
	
}
