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

<%
	if(mname==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage0822.jsp'</script>");
	}
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				PRODUCT DETAIL
			</h1>
		</div>
	</div>

	<br><br>

<%
	String no=request.getParameter("pid");

	DTOproduct0819 product=DAOproduct0819.getDetail(no);
	
	String img1=product.getPfilename1();
	String imgstr1="";
	
	if(img1!=null) {
		imgstr1="images/"+img1;
	}
	
	String img2=product.getPfilename2();
	String imgstr2="";
	
	if(img2!=null) {
		imgstr2="images/"+img2;
	}
	
	String img3=product.getPfilename3();
	String imgstr3="";
	
	if(img3!=null) {
		imgstr3="images/"+img3;
	}
%>

	<img src="<%=imgstr1 %>" class="rounded mx-auto d-block" alt="사진">
	<img src="<%=imgstr2 %>" class="rounded mx-auto d-block" alt="사진">
	<img src="<%=imgstr3 %>" class="rounded mx-auto d-block" alt="사진">
	
	<div class="container">
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="w-30 h-20">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="<%=imgstr1 %>" class="d-block w-100" alt="사진">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=imgstr2 %>" class="d-block w-100" alt="사진">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=imgstr3 %>" class="d-block w-100" alt="사진">
			    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
	</div>
	</div>
	
	<br>
	
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
			<div class="card-header">
		    	no. : <%=product.getPid() %><br>
			</div>
				<div class="card-body">
				<h5 class="card-title">name : <%=product.getPname() %><br></h5>
				<p class="card-text">desc : <%=product.getPdesc() %><br>
								price : <%=product.getPprice() %><br>
								filename1 : <%=product.getPfilename1() %><br>
								filename2 : <%=product.getPfilename2() %><br>
								filename3 : <%=product.getPfilename3() %><br>
				</p>
				</div>
		</div>	
	
		<br><br>

		<a class="btn btn-info" href="productlist0822.jsp" role="button">목록보기</a><br><br>
		<a class="btn btn-info" href="deliverypage.jsp?pid=<%=product.getPid() %>&pname=<%=product.getPname() %>&pprice=<%=product.getPprice() %>" role="button">구매</a><br><br><br>
		<a class="btn btn-secondary" href="productinputpage0819.jsp" role="button">등록</a>
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>