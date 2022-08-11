<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="exam.*" %>
<% 
// JSP 로 DB 연결 방법 3/4
	Connection conn=null;
	conn=DbConnClose.getConnection();
	
// 4.Statement Object
	PreparedStatement pstmt=null;

	String sql="CREATE table visit("
				+"memo		varchar(50))";
			  //+"primary key(memo))";
			  // 같은 내용 중복 입력 시 오류가 나니까 설정하지 말기!

	pstmt=conn.prepareStatement(sql);
	
// 5.SQL Execute
	pstmt.executeUpdate();

// 6.Resultset Object
	// 미 실시 ( sql 실행 결과 수신 )
	
// 7.Connection Close
	pstmt.close();
	conn.close();
%>