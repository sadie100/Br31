<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/br31.css">
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8cac00c1ae66570ccea4298241d3ae9"></script>
</head>
<body id="br_store">
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
		
	<!-- content -->
	<article id="wrap" class="br_store_map">

	<div id="content">
		<div class="map_wrap">

			<div id="map" class="store_map" style="position: relative; overflow: hidden;"></div>
	<script>
		var container = document.getElementById('map');
		
		var options = {
			center: new kakao.maps.LatLng(37.499401, 127.033339),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		 // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(37.499401,127.033339); 

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({position:markerPosition});
        
        //지도 표시
        marker.setMap(map);
	</script>
			

	</div>
	</div>


</article>

	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>