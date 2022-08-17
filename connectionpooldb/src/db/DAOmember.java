package db;

import java.sql.*;

// 예외처리 하면서 생긴 것.
import javax.naming.NamingException;

import util.*;

public class DAOmember {

	// C create R read U update D delete
	
	// 회원 가입 ( 테이블에 데이터 넣기 )
	public int join(String mname, String mtel) throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement stmt=null;
		
		String sql="INSERT INTO member (mname,mtel) VALUES(?,?)";
		
		// Connection Pool 이용
		conn=ConnectionPool.get();  // 예외처리를 강제하는 애들. 예외처리도 처리해주자.
		
		stmt=conn.prepareStatement(sql);
			stmt.setString(1,mname);
			stmt.setString(2,mtel);
			
		int result=stmt.executeUpdate();
		// 결과가 성공 1과 실패 2로 넘어온다.( 성공했는지 1, 실패했는지 2 )
		
		return result;
	}
	
}
