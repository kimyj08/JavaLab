<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.*" %>
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
				PRODUCT LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover">
		  <thead>
		    <tr>
		      <th scope="col">NO.</th>
		      <th scope="col">NAME</th>
		      <th scope="col">DESC</th>
		      <th scope="col">PRICE</th>
		      <th scope="col">THUMBNAIL</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
   	ArrayList<DTOproduct0819> p=DAOproduct0819.getList();

 		    	for(DTOproduct0819 product:p) {
%>		
	
		    <tr>
		      <th scope="row"><%=product.getPid() %></th>
		      <td><a href="productdetail.jsp?pid=<%=product.getPid() %>"><%=product.getPname() %></a></td>
		      <td><a href="productdetail.jsp?pid=<%=product.getPid() %>"><%=product.getPdesc() %></a></td>
		      <th scope="row"><%=product.getPprice() %></th>
		      <th scope="row"><img src="images/<%=product.getPfilename1() %>" width="70" height="70" class="rounded mx-auto d-block" alt="사진"></th>
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