package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOdelivery0822 {

	public static int insert(String dpid, String dmno, String dmaddr, String dmtel, String dpname, String dpprice)throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="INSERT INTO delivery (dpid,dmno,dmaddr,dmtel,dpname,dpprice) VALUES(?,?,?,?,?,?)";
		
		conn=ConnectionPool.get();
		
		pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dpid);
			pstmt.setString(2, dmno);
			pstmt.setString(3, dmaddr);
			pstmt.setString(4, dmtel);
			pstmt.setString(5, dpname);
			pstmt.setString(6, dpprice);
			
		int result=pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}
}
