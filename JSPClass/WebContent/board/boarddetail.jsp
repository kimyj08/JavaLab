<%@page import="db.*"%>
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
				Board Detail
			</h1>
		</div>
	</div>

	<br><br>

<% 

	String no=request.getParameter("bid");

	DTOboard0818 board=DAOboard0818.getDetail(no);
	
	String img=board.getIname();
	String imgstr="";
	if(img!=null) {
		imgstr="../images/"+img;
	}
%>

	<img src="<%=imgstr %>" class="rounded mx-auto d-block" alt="사진">
	
	<br>
	
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
			<div class="card-header">
		    	bid : <%=board.getBid() %><br>
			</div>
				<div class="card-body">
				<h5 class="card-title">title : <%=board.getTitle() %><br></h5>
				<p class="card-text">content : <%=board.getContent() %><br>
								iname : <%=board.getIname() %><br>
								bdate : <%=board.getBdate() %><br>
				</p>
				</div>
		</div>	
	
		<br><br>

		<a class="btn btn-info" href="boardlist.jsp" role="button">목록보기</a><br><br>
		<a class="btn btn-secondary" href="boardinputpage0818.jsp" role="button">등록</a>
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>