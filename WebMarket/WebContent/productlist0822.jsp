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
<title>PRODUCT LIST</title>

</head>
<body>
		
<%@ include file="../header.jsp" %>

<%
	if(mname==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage0822.jsp'</script>");
	}
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				PRODUCT LIST
			</h1>
		</div>
	</div>
				    
<%
   	ArrayList<DTOproduct0819> p=DAOproduct0819.getList();
%>
	<div class="container">
	<div class="row" align="center">	
<%
	    	for(DTOproduct0819 product:p) {
%>		
	<div class="col-md-4">
		<h3><a href="productdetail.jsp?pid=<%=product.getPid() %>"><%=product.getPname() %></a></h3>
		<p><%=product.getPdesc() %></p>
		<p><%=product.getPprice() %></p>		 
	</div>   
<% 
	}
%>
	</div>	    
	</div>
	
<br><br>

<%@ include file="../footer.jsp" %>

</body>
</html>