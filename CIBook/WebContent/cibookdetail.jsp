<%@page import="java.util.ArrayList"%>
<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Detail</title>
</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				CHARACTER ILLUSTRATED BOOK DETAIL
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
	
	<%-- <div class="container">
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
	</div> --%>
	
	<br>
	
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
								subscribe-price : 월 &nbsp;&nbsp;<%=cibook.getCprice() %> 원<br>
								page-count : <%=cibook.getCcnt() %><br>
				</p>
				</div>
		</div>	
	
		<br><br>
		
		<div id="map" style="width:50%;height:350px;margin:auto;"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=605a56e8514927a9a3f7916a8020a9d4&libraries=services,clusterer,drawing"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('<%=cibook.getCaddr() %>', function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">캐릭터 만든 곳 ><</div>'
	        });
	        infowindow.open(map, marker);
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
	</script>
	
	<br><br>

		<a class="btn btn-info" href="cibooklist.jsp" role="button">도감 목록</a><br><br>
		<%
		if(mnick!=null) {
			if(mnick.equals(cibook.getCowner())) {
		%>
		<a class="btn btn-info" href="javascript:history.back();" role="button">내 도감 목록</a><br><br>
		<%
			}
		}
		%>
		<a class="btn btn-info" href="cibooksubpage.jsp?cid=<%=cibook.getCid() %>&cname=<%=cibook.getCname() %>&cprice=<%=cibook.getCprice() %>" role="button">구독(후원)</a><br><br><br>
		
		<br><br>
		<%
		if(mnick!=null) {
			if(mnick.equals(cibook.getCowner())) {
		%>
		<a class="btn btn-warning" href="cibookeditpage.jsp?cid=<%=cibook.getCid() %>" role="button">도감 수정</a><br><br>
		<%
			}
		}
		%>
		<a class="btn btn-secondary" href="cibookinputpage.jsp" role="button">새 캐릭터 등록</a>
		
	</div>
	
	<br><br>
	
	<%
	if(mnick!=null) {
	%>
	<div class="container">
		<form action="rcommentinput.jsp" method="post">
			<div class="form-group row">
				<label class="col-sm-1">댓글달기</label>
				<div class="col-sm-2">
					<input name="rcid" type="hidden" value="<%=cibook.getCid() %>">
					<input name="rnick" type="text" class="form-control" value="<%=mnick %>" readonly>
					<!-- 비회원도 댓글 달 수 있도록 처리하기. 비회원일 경우 아이디가 guest로 자동입력 되도록 처리하기. -->
				</div>
				<div class="col-sm-6">
					<input name="rcm" type="text" class="form-control" placeholder="코멘트를 입력하세요">
				</div>
				
				<br><br>
			<div class=container>
				<div class="form-group-row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="등록">
						<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
					</div>
				</div>
			</div>
			</div>
			
		</form>
	</div>
	<%
	}
	%>
	
	<br><br>
	
	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-7">
				MY CHARACTER ILLUSTRATED BOOK COMMENT LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover">
		  <thead>
		    <tr>
		      <th scope="col">WRITER</th>
		      <th scope="col">COMMENT</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
   	ArrayList<DTOrcomment> r=DAOrcomment.getMylist(cibook.getCid());

		for(DTOrcomment rcomment:r) {			
%>		
	
		    <tr>
		      <th scope="row"><%=rcomment.getRnick() %></th>
		      <th scope="row"><%=rcomment.getRcm() %></th>
		    </tr>
		    
<% 
	}
%>
		    
		  </tbody>
		</table>
	</div>
	
	
		<%-- <input name="rid" type="hidden" value="<%=rcomment.getRid() %>"> --%>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>

</body>
</html>

