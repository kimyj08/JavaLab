package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOrcomment {

	public static int insert(String rcid, String rnick, String rcm) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO rcomment (rcid,rnick,rcm) VALUES(?,?,?)";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,rcid);
			stmt.setString(2,rnick);
			stmt.setString(3,rcm);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static int update(String rnick, String rcm, String rid) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="UPDATE rcomment SET rnick=?,rcm=? WHERE rid=?";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,rnick);
			stmt.setString(2,rcm);
			stmt.setString(3,rid);
			
		int result=stmt.executeUpdate();
		
		stmt.close();
		conn.close();
		
		return result;
		
	}
	
	public static ArrayList<DTOrcomment> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM rcomment";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOrcomment> r=new ArrayList<DTOrcomment>();
		
		while(rs.next()) {
			r.add(new DTOrcomment(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return r;
	}
	
	public static ArrayList<DTOrcomment> getMylist() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM rcomment WHERE rcid=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOrcomment> r=new ArrayList<DTOrcomment>();
		
		while(rs.next()) {
			r.add(new DTOrcomment(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5)));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return r;
	}
	
	public static DTOrcomment getDetail(String rid) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM rcomment WHERE rid=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, rid);
		rs=stmt.executeQuery();
		
		rs.next();
		
		rid=rs.getString(1);
		String rcid=rs.getString(2);
		String rnick=rs.getString(3);
		String rcm=rs.getString(4);
		String rdate=rs.getString(5);
		
		DTOrcomment rcomment=new DTOrcomment(rid,rcid,rnick,rcm,rdate);
		
		rs.close();
		stmt.close();
		conn.close();
		
		return rcomment;
		
	}
	
}
