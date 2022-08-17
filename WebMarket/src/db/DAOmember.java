package db;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOmember {
	
	public static int join(String mname, String mtel)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO member (mname,mtel) VALUES(?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mname);
			pstmt.setString(2, mtel);
			
		int result=pstmt.executeUpdate();
		
		return result;
	}	
	
}
