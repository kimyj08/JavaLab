<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도감 목록</title>

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
		<table class="table table-striped table-hover" style="text-align:center">
		  <thead>
		    <tr>
		      <th scope="col">NO.</th>
		      <th scope="col">CHARACTER-NAME</th>
		      <th scope="col">THUMBNAIL</th>
		      <th scope="col">OWNER</th>
		      <th scope="col">CREATED-DATE</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
   	ArrayList<DTOcibook> c=DAOcibook.getList();

 		    	for(DTOcibook cibook:c) {
%>		
		    <tr>
		      <td><a href="cibooksdetail.jsp?cid=<%=cibook.getCid() %>"><%=cibook.getCid() %></a></td>
		      <td><a href="cibooksdetail.jsp?cid=<%=cibook.getCid() %>"><%=cibook.getCname() %></a></td>
		      <th scope="row"><img src="images/<%=cibook.getCiname1() %>" width="100" class="rounded mx-auto d-block" alt="사진"></th>
		      <th scope="row"><%=cibook.getCowner() %></th>
		      <th scope="row"><%=cibook.getCdate() %></th>
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