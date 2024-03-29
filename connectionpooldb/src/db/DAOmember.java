package db;

import java.sql.*;
import java.util.ArrayList;

// 예외처리 하면서 생긴 것.
import javax.naming.NamingException;

import util.*;

public class DAOmember {

	// C create R read U update D delete
	
	// 회원 가입 ( 테이블에 데이터 넣기 )
	public static int join(String mname, String mtel) throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement stmt=null;
		int result=0;
		
		String sql="INSERT INTO member (mname,mtel) VALUES(?,?)";
		
		// Connection Pool 이용
		conn=ConnectionPool.get();  // 예외처리를 강제하는 애들. 예외처리도 처리해주자.
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,mname);
			stmt.setString(2,mtel);
			
		result=stmt.executeUpdate();
		// 결과가 성공 1과 실패 2로 넘어온다.( 성공했는지 1, 실패했는지 2 )
		
		return result;
	}
	
	public static int boardinsert(String title, String content, String iname) throws NamingException, SQLException {

		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO board (title,content,iname) VALUES(?,?,?)";
		
		conn=ConnectionPool.get();
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,title);
			stmt.setString(2,content);
			stmt.setString(3,iname);
			
		int result=stmt.executeUpdate();
		
		return result;
		
	}
	
	public static ArrayList<DTOboard> getList() throws NamingException, SQLException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM board";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
		rs=stmt.executeQuery();
		
		ArrayList<DTOboard> b=new ArrayList<DTOboard>();
		
		while(rs.next()) {
			b.add(new DTOboard(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5)));
		}
		
		return b;
	}
	
	public static DTOboard getDetail(String bid) throws SQLException, NamingException {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM board WHERE bid=?";
		
		conn=ConnectionPool.get();
		stmt=conn.prepareStatement(sql);
			stmt.setString(1, bid);
		rs=stmt.executeQuery();
		
		rs.next();
		
		bid=rs.getString(1);
		String title=rs.getString(2);
		String content=rs.getString(3);
		String iname=rs.getString(4);
		String bdate=rs.getString(5);
		
		DTOboard board=new DTOboard(bid,title,content,iname,bdate);
		
		return board;
		
	}
	
}
