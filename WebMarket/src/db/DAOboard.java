package db;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOboard {

	public static int join(String btitle, String bmemo) throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO board (btitle,bmemo) VALUES(?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setNString(1, btitle);
			pstmt.setNString(2, bmemo);
			
		int result=pstmt.executeUpdate();
			
		return result;
	}
	
	
}
