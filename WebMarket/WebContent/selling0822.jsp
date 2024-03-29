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
<title>배송관리</title>

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
				DELIVERY LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover">
		  <thead>
		    <tr>
		      <th scope="col">번호</th>
		      <th scope="col">구매자</th>
		      <th scope="col">구매물품</th>
		      <th scope="col">주소</th>
		      <th scope="col">전화번호</th>
		      <th scope="col">가격</th>
		      <th scope="col">구매일자</th>
		      <th scope="col">상태</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
				    	ArrayList<DTOdelivery0822> d=DAOsubscribe.getList();

				     		    	for(DTOdelivery0822 delivery:d) {
				    %>		
	
		    <tr>
		      <th scope="row"><%=delivery.getDid() %></th>
		      <td><%=delivery.getDmno() %></td>
		      <td><%=delivery.getDpid() %></td>
		      <td><%=delivery.getDmaddr() %></td>
		      <td><%=delivery.getDmtel() %></td>
		      <td><%=delivery.getDpprice() %></td>
		      <td><%=delivery.getDdate() %></td>
		      <td>
		      <% 
		      if(delivery.getDstatus().equals("1")) {
		      	out.print("[입금전]");
		      } else if(delivery.getDstatus().equals("2")) {
		      	out.print("<button onclick='confirm_onClick()' class='btn btn-info'>[입금완료]</button>");
		      } else if(delivery.getDstatus().equals("3")) {
		      	out.print("<button onclick='confirm_onClick()' class='btn btn-info'>[배송전]</button>");
		      } else if(delivery.getDstatus().equals("4")) {
		      	out.print("[배송중]");
		      } else {
		      	out.print("[배송완료]");
		      }
		      %>
		      </td>
		      
		    </tr>	    
<% 
	}
%>
		    
		  </tbody>
		</table>
		
		<script>
			function confirm_onclick() {
				var answer=confirm("상태를 변경하시겠습니까?");
				
				if(answer) {
					location.href="selingstatus,jsp";
				}
			}
		</script>
		
		<!-- <a class="btn btn-info" href="boardinputpage.jsp" role="button">글쓰기</a><br><br> -->
		
	</div>
	
<br><br>

<%@ include file="../footer.jsp" %>

</body>
</html>