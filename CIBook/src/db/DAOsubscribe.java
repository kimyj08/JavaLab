package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOsubscribe {

	public static int insert(String scid, String smno, String smtel, String scname, String scprice)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO subscribe (scid,smno,smtel,scname,scprice) VALUES(?,?,?,?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, scid);
			pstmt.setString(2, smno);
			pstmt.setString(3, smtel);
			pstmt.setString(4, scname);
			pstmt.setString(5, scprice);
			
		int result=pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}
	
	public static ArrayList<DTOsubscribe> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM subscribe";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOsubscribe> s=new ArrayList<DTOsubscribe>();
		
		while(rs.next()) {
			s.add(new DTOsubscribe(rs.getString(1),
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
		
		return s;
		
	}
	
	public static int statusup(String sstatus, String sid) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="UPDATE subscribe SET sstatus=? WHERE sid=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,sstatus);
			stmt.setString(2,sid);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}

}
