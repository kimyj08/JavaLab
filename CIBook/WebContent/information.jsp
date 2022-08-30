<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information</title>
</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				PAGE INFORMATION
			</h1>
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
	geocoder.addressSearch('서울특별시 종로구 우정국로2길 21', function(result, status) {
	
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
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">개발한 곳 ><</div>'
	        });
	        infowindow.open(map, marker);
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
	</script>
			
		<br><br>
	
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
			<div class="card-header">
		    	Page - Information<br>
			</div>
				<div class="card-body">
				<h5 class="card-title">Character Illustrated Book Page<br></h5>
				<p class="card-text">tel. : 02) ㅇㅇㅇ - ㅇㅇㅇㅇ<br>
								email : ㅇㅇㅇㅇㅇㅇ@naver.com<br>
								address : 서울특별시 종로구 우정국로2길 21 더조은컴퓨터아카데미<br>
								develop-date : 2022.08.24 ~ <br>
								<%-- filename1 : <%=product.getPfilename1() %><br>
								filename2 : <%=product.getPfilename2() %><br>
								filename3 : <%=product.getPfilename3() %><br> --%>
				</p>
				</div>
		</div>
		
		<br><br>

		<a class="btn btn-info" href="welcome.jsp" role="button">Home</a><br><br>
		<!-- <a class="btn btn-info" href="javascript:history.back();" role="button">돌아가기</a><br><br> -->
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>