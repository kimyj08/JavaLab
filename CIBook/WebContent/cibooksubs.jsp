<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				MEMBER LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover" style="text-align:center">
		  <thead>
		    <tr>
		      <th scope="col">NO.</th>
		      <th scope="col">NICKNAME(ID)</th>
		      <th scope="col">TEL.</th>
		      <th scope="col">EMAIL</th>
		      <th scope="col">GENDER</th>
		      <th scope="col">LEVEL</th>
		      <th scope="col">JOIN-DATE</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
   	ArrayList<DTOmember> m=DAOmember.getList();

 		    	for(DTOmember member:m) {
%>		
		    <tr>
		      <th scope="row"><a href="membersdetail.jsp?mnick=<%=member.getMnick() %>"><%=member.getMno() %></a></th>
		      <td><a href="membersdetail.jsp?mnick=<%=member.getMnick() %>"><%=member.getMnick() %></a></td>
		      <th scope="row"><%=member.getMtel() %></th>
		      <th scope="row"><%=member.getMemail() %></th>
		      <th scope="row"><%=member.getMgender() %></th>
		      <th scope="row"><%=member.getMlevel() %></th>
		      <th scope="row"><%=member.getMdate() %></th>
		    </tr>    
<% 
	}
%>
		    
		  </tbody>
		</table>
		
		<!-- <a class="btn btn-info" href="boardinputpage.jsp" role="button">글쓰기</a><br><br> -->
		
	</div>
	
<br><br>

<%@ include file="../footer.jsp" %>

</body>
</html>