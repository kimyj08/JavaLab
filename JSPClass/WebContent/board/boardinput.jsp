<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	String btitle=request.getParameter("btitle");
	String bmemo=request.getParameter("bmemo");
	
	String driverClass="com.mysql.jdbc.Driver";
	Class.forName(driverClass);
	
	Connection conn=null;
	
	String url="jdbc:mysql://localhost:3306/webmarket";
	String id="root";
	String pw="0000";
	
	conn=DriverManager.getConnection(url,id,pw);
	
	PreparedStatement pstmt=null;
	
	String sql="INSERT INTO board (btitle,bmemo) VALUES(?,?)";
	
	pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,btitle);
		pstmt.setString(2,bmemo);
		
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
			
%>