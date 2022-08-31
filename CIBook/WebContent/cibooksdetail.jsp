<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도감목록 상세페이지</title>
</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				CIBOOKS DETAIL
			</h1>
		</div>
	</div>

	<br><br>

<%
	String no=request.getParameter("cid");
	
	DAOcibook.updateCnt(no);
	
	DTOcibook cibook=DAOcibook.getDetail(no);
	
	String img1=cibook.getCiname1();
	String imgstr1="";
	
	if(img1!=null) {
		imgstr1="images/"+img1;
	}
	
	String img2=cibook.getCiname2();
	String imgstr2="";
	
	if(img2!=null) {
		imgstr2="images/"+img2;
	}
	
	String img3=cibook.getCiname3();
	String imgstr3="";
	
	if(img3!=null) {
		imgstr3="images/"+img3;
	}
%>
	<img src="<%=imgstr1 %>" class="rounded mx-auto d-block" alt="사진" width="500">
	<img src="<%=imgstr2 %>" class="rounded mx-auto d-block" alt="사진" width="500">
	<img src="<%=imgstr3 %>" class="rounded mx-auto d-block" alt="사진" width="500">

	<br><br>
	
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 30rem;">
			<div class="card-header">
		    	no. : <%=cibook.getCid() %><br>
			</div>
				<div class="card-body">
				<h5 class="card-title">name : <%=cibook.getCname() %><br></h5>
				<p class="card-text">birth-date : <%=cibook.getCbirth() %><br>
								gender : <%=cibook.getCgender() %><br>
								feature : <%=cibook.getCft() %><br>
								desc. : <%=cibook.getCdesc() %><br>
								filename1 : <%=cibook.getCiname1() %><br>
								filename2 : <%=cibook.getCiname2() %><br>
								filename3 : <%=cibook.getCiname3() %><br>
								owner : <%=cibook.getCowner() %><br>
								address : <%=cibook.getCaddr() %><br>
								page-count : <%=cibook.getCcnt() %><br>
				</p>
				</div>
		</div>
		
		<br><br>

		<a class="btn btn-info" href="cibooks.jsp" role="button">목록보기</a><br><br>
		<!-- <a class="btn btn-secondary" href="productinputpage0819.jsp" role="button">등록</a> -->
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>