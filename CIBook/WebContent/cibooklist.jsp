<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도감목록</title>

</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				CHARACTER ILLUSTRATED BOOK LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover">
		  <thead>
		    <tr>
		      <th scope="col">NO.</th>
		      <th scope="col">NAME</th>
		      <th scope="col">COLOR</th>
		      <th scope="col">CATEGORY</th>
		      <th scope="col">THUMBNAIL</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
   	ArrayList<DTOcibook> c=DAOcibook.getList();

 		    	for(DTOcibook cibook:c) {
%>		
	
		    <tr>
		      <td><a href="cibookdetail.jsp?cid=<%=cibook.getCid() %>"><%=cibook.getCid() %></a></td>
		      <td><a href="cibookdetail.jsp?cid=<%=cibook.getCid() %>"><%=cibook.getCname() %></a></td>
		      <th scope="row"><%=cibook.getCcolor() %></th>
		      <th scope="row"><%=cibook.getCctgr() %></th>
		      <th scope="row"><img src="images/<%=cibook.getCiname1() %>" width="70" height="70" class="rounded mx-auto d-block" alt="사진"></th>
		    </tr>
		    
<% 
	}
%>
		    
		  </tbody>
		</table>
	</div>
	
<br><br>

<%@ include file="../footer.jsp" %>

</body>
</html>