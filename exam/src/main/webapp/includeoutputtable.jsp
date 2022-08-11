<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="includedb.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>

<%
	String sql="SELECT * FROM prof";

	pstmt=conn.prepareStatement(sql);
	
	ResultSet rset=null;
	rset=pstmt.executeQuery();

%>

<div class="container">
	<div class="alert alert-primary text-white fw-bold" role="alert">
	  회원 정보 조회
	</div>
</div>
<div class="container">
	<table class="table table-hover table-bordered">
	  <thead>
	    <tr class="text-primary">
	      <th scope="col">#</th>
	      <th scope="col">교수번호</th>
	      <th scope="col">교수명</th>
	      <th scope="col">학과</th>
	      <th scope="col">전번</th>
	    </tr>
	  </thead>
	  <tbody>
	  
<%
	int i=1;

	while(rset.next()) {
		String pno=rset.getString("pno");
		String pname=rset.getString("pname");
		String pdept=rset.getString("pdept");
		String pmobile=rset.getString("pmobile");
		
%>		
		<tr class="table-info table-striped">
		  <th scope="row"><%=i %></th>
		  <td><%=pno %></td>
		  <td><%=pname %></td>
		  <td><%=pdept %></td>
		  <td><%=pmobile %></td>
		</tr>
<%
		i++;
	}
%>
	</tbody>
	</table>
</div>

<%
rset.close();
pstmt.close();
conn.close();
%>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>