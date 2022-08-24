<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Members Detail</title>
<style>
    .overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #999999; background: #999999 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 27px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 190px; height: 56px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 24px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>
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
				MEMBERS DETAIL
			</h1>
		</div>
	</div>

	<br><br>

<%
	String no=request.getParameter("mname");

	DTOmember0822 member=DAOmember0822.getDetail(no);
	
	String img=member.getMiname();
	String imgstr="";
	
	if(img!=null) {
		imgstr="images/"+img;
	}
%>

	<%-- <img src="<%=imgstr1 %>" class="rounded mx-auto d-block" alt="사진">
	<img src="<%=imgstr2 %>" class="rounded mx-auto d-block" alt="사진">
	<img src="<%=imgstr3 %>" class="rounded mx-auto d-block" alt="사진"> --%>
	
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
	
		<div id="map" style="width:500px;height:300px;margin:auto;"></div> <!-- 지도를 표시할 div 입니다 -->
		<div id="roadview" style="width:500px;height:300px;margin:auto;"></div> <!-- 로드뷰를 표시할 div 입니다 -->
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=605a56e8514927a9a3f7916a8020a9d4&libraries=services,clusterer,drawing"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapCenter = new kakao.maps.LatLng(33.5563, 126.7958), // 지도의 중심좌표
			    mapOption = {
			        center: mapCenter, // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption);
			
			// 커스텀 오버레이에 표시할 내용입니다
			// HTML 문자열 또는 Dom Element 입니다
			var content = '<div class="overlay_info">';
			content += '    <a href="https://place.map.kakao.com/17600274" target="_blank"><strong>월정리 해수욕장</strong></a>';
			content += '    <div class="desc">';
			content += '        <img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">';
			content += '        <span class="address">제주특별자치도 제주시 구좌읍 월정리 33-3</span>';
			content += '    </div>';
			content += '</div>';
			
			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new kakao.maps.LatLng(33.55635, 126.795841);
			
			// 커스텀 오버레이를 생성합니다
			var mapCustomOverlay = new kakao.maps.CustomOverlay({
			    position: position,
			    content: content,
			    xAnchor: 0.5, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
			    yAnchor: 1.1 // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다
			});
			
			// 커스텀 오버레이를 지도에 표시합니다
			mapCustomOverlay.setMap(map);
			
			var rvContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
			var rv = new kakao.maps.Roadview(rvContainer); //로드뷰 객체
			var rvClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체
			
			//지도의 중심좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
			rvClient.getNearestPanoId(mapCenter, 50, function(panoId) {
			    rv.setPanoId(panoId, mapCenter); //panoId와 중심좌표를 통해 로드뷰 실행
			});
			
			kakao.maps.event.addListener(rv, 'init', function() {
			
			    // 커스텀 오버레이를 생성합니다
			    var rvCustomOverlay = new kakao.maps.CustomOverlay({
			        position: position,
			        content: content,
			        xAnchor: 0.5, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
			        yAnchor: 0.5 // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다
			    });
			
			    //rvCustomOverlay.setAltitude(2); //커스텀 오버레이의 고도값을 설정합니다.(로드뷰 화면 중앙이 0입니다)
			    rvCustomOverlay.setMap(rv);
			
			    var projection = rv.getProjection(); // viewpoint(화면좌표)값을 추출할 수 있는 projection 객체를 가져옵니다.
			    
			    // 커스텀오버레이의 position과 altitude값을 통해 viewpoint값(화면좌표)를 추출합니다.
			    var viewpoint = projection.viewpointFromCoords(rvCustomOverlay.getPosition(), rvCustomOverlay.getAltitude());
			
			    rv.setViewpoint(viewpoint); //커스텀 오버레이를 로드뷰의 가운데에 오도록 로드뷰의 시점을 변화 시킵니다.
			});
		</script>
			
			<br>
	
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
			<div class="card-header">
		    	no. : <%=member.getMno() %><br>
			</div>
				<div class="card-body">
				<h5 class="card-title">name : <%=member.getMname() %><br></h5>
				<p class="card-text">tel. : <%=member.getMtel() %><br>
								email : <%=member.getMemail() %><br>
								gender : <%=member.getMgender() %><br>
								address : <%=member.getMaddr() %><br>
								image : <%=member.getMiname() %><br>
								member-level : <%=member.getMlevel() %><br>
								join-date : <%=member.getMdate() %><br>
								<%-- filename1 : <%=product.getPfilename1() %><br>
								filename2 : <%=product.getPfilename2() %><br>
								filename3 : <%=product.getPfilename3() %><br> --%>
				</p>
				</div>
		</div>
		
		<br><br>

		<a class="btn btn-info" href="members0822.jsp" role="button">목록보기</a><br><br>
		<!-- <a class="btn btn-secondary" href="productinputpage0819.jsp" role="button">등록</a> -->
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>