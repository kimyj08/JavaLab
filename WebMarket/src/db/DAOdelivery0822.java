package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public static ArrayList<DTOdelivery0822> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM delivery";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOdelivery0822> d=new ArrayList<DTOdelivery0822>();
		
		while(rs.next()) {
			d.add(new DTOdelivery0822(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6),
							   rs.getString(7),
							   rs.getString(8),
							   rs.getString(9),
							   rs.getString(10)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return d;
		
	}
	
	public static int statusup(String dstatus, String did) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="UPDATE delivery SET datatus=? WHERE did=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,dstatus);
			stmt.setString(2,did);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}

}
