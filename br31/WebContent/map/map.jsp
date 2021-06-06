<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/br31.css">
</head>
<body id="br_store">
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
		
	<!-- content -->
	<article id="wrap" class="br_store_map">

	<div id="content">
		<div class="map_wrap">
			<!-- [D] 지도구역 -->	
			<div id="store_map" class="store_map" style="position: relative; overflow: hidden; background: url(&quot;http://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;http://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/983/449.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1868px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/983/450.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1356px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/983/451.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -844px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/983/452.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -332px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/983/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 180px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/983/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 692px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/983/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1204px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/983/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1716px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/984/449.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1868px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/984/450.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1356px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/984/451.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -844px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/984/452.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -332px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/984/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 180px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/984/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 692px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/984/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1204px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/984/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1716px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/985/449.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1868px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/985/450.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1356px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/985/451.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -844px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/985/452.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -332px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/985/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 180px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/985/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 692px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/985/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1204px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/985/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1716px; top: -537px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/986/449.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1868px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/986/450.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1356px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/986/451.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -844px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/986/452.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -332px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/986/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 180px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/986/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 692px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/986/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1204px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/986/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1716px; top: -1049px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 512px; height: 512px;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1966/905.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -77px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1966/906.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 179px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1966/907.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 435px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1966/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 691px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1966/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 947px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1966/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1203px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1966/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1459px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1966/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1715px; top: 743px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1967/905.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -77px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1967/906.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 179px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1967/907.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 435px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1967/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 691px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1967/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 947px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1967/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1203px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1967/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1459px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1967/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1715px; top: 487px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1968/905.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -77px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1968/906.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 179px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1968/907.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 435px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1968/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 691px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1968/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 947px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1968/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1203px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1968/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1459px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1968/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1715px; top: 231px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1969/905.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -77px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1969/906.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 179px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1969/907.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 435px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1969/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 691px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1969/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 947px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1969/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1203px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1969/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1459px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1969/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1715px; top: -25px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 1548px; height: 750px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3096px; top: -1500px; width: 7740px; height: 3750px;" viewBox="0 0 7740 3750"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 728px; top: 123px;"><img draggable="false" src="/assets/images/store/icon_map_marker_1.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 699px; top: -198px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_2.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 422px; top: -414px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_3.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 861px; top: 595px; display: block;"><img draggable="false" src="/assets/images/store/icon_map_marker_4.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -196px; top: 333px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_5.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -515px; top: 873px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_6.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -821px; top: -525px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_7.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 1319px; top: 1532px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_8.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 1554px; top: 1530px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_9.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -567px; top: -1273px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_10.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2414px; top: -809px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_11.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -547px; top: 1540px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_12.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -1133px; top: -821px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_13.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -1153px; top: -923px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_14.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2804px; top: -309px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_15.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2895px; top: 34px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_16.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 221px; top: -2252px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_17.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -1913px; top: -44px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_18.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2812px; top: -1570px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_19.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -1329px; top: 1738px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_20.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2350px; top: 2186px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_21.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 1575px; top: -2778px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_22.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 3693px; top: -79px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_23.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -2044px; top: 1648px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_24.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -2494px; top: 755px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_25.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 854px; top: -3254px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_26.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 1925px; top: 3160px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_27.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2696px; top: -2971px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_28.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 4288px; top: 981px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_29.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 483px; top: 3757px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_30.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -3438px; top: 1191px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_31.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -1270px; top: -3894px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_32.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -821px; top: -4095px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_33.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -3331px; top: 1967px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_34.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 5347px; top: 757px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_35.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -3412px; top: 2533px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_36.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -289px; top: -4891px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_37.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 5506px; top: -1422px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_38.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -2318px; top: -4015px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_39.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -4081px; top: 1663px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_40.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -3878px; top: -2256px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_41.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2969px; top: -4636px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_42.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 5768px; top: -1473px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_43.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 358px; top: -5537px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_44.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 4539px; top: -4019px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_45.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: -2478px; top: -4610px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_46.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 2196px; top: -5502px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_47.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 3049px; top: -5268px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_48.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 4661px; top: -4411px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_49.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div><div style="position: absolute; margin: -65px 0px 0px -22px; z-index: 0; left: 6636px; top: -522px; display: none;"><img draggable="false" src="/assets/images/store/icon_map_marker_50.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 44px, 65px, 0px); top: 0px; left: 0px; width: 44px; height: 65px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="http://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
			
			<div class="store_search">
				<nav class="tab">
					<ul>
						<li><a href="#find_box" class="on">매장찾기</a></li>
						<li><a href="#favorite_box">자주가는 매장</a></li>
					</ul>
				</nav>
				<!-- 매장찾기 -->
				<div class="find_box tabbox" id="find_box">
					<form class="form" method="get" name="nform" id="nform" action="list_ajax.php">
						<fieldset>
							<legend>매장 찾기</legend>
							<p class="location">
								<span>
									<select name="ScS" class="location_1">
										<option value="">도/시 선택</option>
																					<option value="강원">강원</option>
																					<option value="경기">경기</option>
																					<option value="경남">경남</option>
																					<option value="경북">경북</option>
																					<option value="광주">광주</option>
																					<option value="대구">대구</option>
																					<option value="대전">대전</option>
																					<option value="부산">부산</option>
																					<option value="서울">서울</option>
																					<option value="세종">세종</option>
																					<option value="울산">울산</option>
																					<option value="인천">인천</option>
																					<option value="전남">전남</option>
																					<option value="전북">전북</option>
																					<option value="제주">제주</option>
																					<option value="충남">충남</option>
																					<option value="충북">충북</option>
																			</select>
								</span>
								<span>
									<select name="ScG" class="location_2">
										<option value="">구/군 선택</option>
									</select>
								</span>
							</p>
							<p class="name">
								<label for="ScWord" class="sr_only">매장명</label>
								<input type="text" name="ScWord" id="ScWord" placeholder="매장명" value="">
							</p>

							<div class="options">
								<a href="#none" id="store_search_options" role="button" aria-haspopup="true" aria-expanded="false">옵션 (매장별 서비스)</a>
								<div class="inner checkbox_box checkbox_icon_box scroll" aria-labelledby="store_search_options">
									<dl>
										<dt>제공 서비스</dt>
																				<dd>
											<label>
												<input type="checkbox" name="ScService[]" id="ScService_B" value="B">
												<span>주차가능</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScService[]" id="ScService_C" value="C">
												<span>해피포인트 적립가능</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScService[]" id="ScService_D" value="D">
												<span>해피오더 픽업</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScService[]" id="ScService_A" value="A">
												<span>해피오더 딜리버리</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScService[]" id="ScService_E" value="E">
												<span>배달의 민족</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScService[]" id="ScService_F" value="F">
												<span>요기요</span>
											</label>
										</dd>
																			</dl>
									<dl>
										<dt>스페셜 메뉴</dt>
																				<dd>
											<label>
												<input type="checkbox" name="ScStore[]" id="ScStore_B" value="B">
												<span>빙수</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScStore[]" id="ScStore_C" value="C">
												<span>카페브리즈</span>
											</label>
										</dd>
										
									</dl>
									<dl>
										<dt>이벤트</dt>
																				<dd>
											<label>
												<input type="checkbox" name="ScEvent[]" id="ScEvent_8624" value="8624"> 
												<span>KT 멤버십 고객이라면 누구나 파인트 30% 할인!</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScEvent[]" id="ScEvent_4922" value="4922"> 
												<span>제휴 할인 카드 혜택 안내</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScEvent[]" id="ScEvent_8324" value="8324"> 
												<span>매월 25일, 50% M포인트 사용</span>
											</label>
										</dd>
																				<dd>
											<label>
												<input type="checkbox" name="ScEvent[]" id="ScEvent_3302" value="3302"> 
												<span>1회용 컵 사용 줄이기 안내</span>
											</label>
										</dd>
																			</dl>
									
								</div>
							</div>
							
							<div class="search">
								<button type="submit">검색</button>
							</div>
						</fieldset>
					</form>
					<p class="info"><img src="/assets/images/store/ico_favorite.png" alt="favorite"><span>클릭하여 자주가는 매장을 등록하세요</span></p>
					<p class="total">
						총 <strong>50</strong>건 검색되었습니다.
					</p>
				</div>

				<!-- 자주가는 매장 선택시 -->
				<div class="favorite_box tabbox" id="favorite_box">
				</div>

				<!-- 매장 리스트 -->
				<div class="list">
					<div class="scroll">
						<ul>
<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11101&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11101&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4970132,&quot;pointY&quot;:127.028102,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;강남대로 지하 390&quot;,&quot;address&quot;:&quot;서울 서초구 강남대로 지하 390&quot;,&quot;name&quot;:&quot;강남역사&quot;,&quot;tel&quot;:&quot;02-508-3103&quot;,&quot;distance&quot;:0.115,&quot;is_favorite&quot;:false,&quot;idx&quot;:0,&quot;num&quot;:1}">
			<h3 class="name">
				<small>1</small>
				강남역사
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 강남대로 지하 390</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-508-3103</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11101&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11101&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4970132,&quot;pointY&quot;:127.028102,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;강남대로 지하 390&quot;,&quot;address&quot;:&quot;서울 서초구 강남대로 지하 390&quot;,&quot;name&quot;:&quot;강남역사&quot;,&quot;tel&quot;:&quot;02-508-3103&quot;,&quot;distance&quot;:0.115,&quot;is_favorite&quot;:false,&quot;idx&quot;:0,&quot;num&quot;:1}">강남역사</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11101" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11551&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11551&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4999055,&quot;pointY&quot;:127.027786,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;역삼동 817-11&quot;,&quot;address&quot;:&quot;서울 강남구 역삼동 817-11&quot;,&quot;name&quot;:&quot;강남중앙&quot;,&quot;tel&quot;:&quot;02-563-8588&quot;,&quot;distance&quot;:0.213,&quot;is_favorite&quot;:false,&quot;idx&quot;:1,&quot;num&quot;:2}">
			<h3 class="name">
				<small>2</small>
				강남중앙
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 역삼동 817-11</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-563-8588</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11551&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11551&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4999055,&quot;pointY&quot;:127.027786,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;역삼동 817-11&quot;,&quot;address&quot;:&quot;서울 강남구 역삼동 817-11&quot;,&quot;name&quot;:&quot;강남중앙&quot;,&quot;tel&quot;:&quot;02-563-8588&quot;,&quot;distance&quot;:0.213,&quot;is_favorite&quot;:false,&quot;idx&quot;:1,&quot;num&quot;:2}">강남중앙</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11551" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;31780&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;31780&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5018452,&quot;pointY&quot;:127.024654,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;강남대로69길 8 &amp;#40;서초동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 강남대로69길 8 &amp;#40;서초동&amp;#41;&quot;,&quot;name&quot;:&quot;강남신논현&quot;,&quot;tel&quot;:&quot;02-532-0091&quot;,&quot;distance&quot;:0.505,&quot;is_favorite&quot;:false,&quot;idx&quot;:2,&quot;num&quot;:3}">
			<h3 class="name">
				<small>3</small>
				강남신논현
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 강남대로69길 8 (서초동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-532-0091</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;31780&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;31780&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5018452,&quot;pointY&quot;:127.024654,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;강남대로69길 8 &amp;#40;서초동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 강남대로69길 8 &amp;#40;서초동&amp;#41;&quot;,&quot;name&quot;:&quot;강남신논현&quot;,&quot;tel&quot;:&quot;02-532-0091&quot;,&quot;distance&quot;:0.505,&quot;is_favorite&quot;:false,&quot;idx&quot;:2,&quot;num&quot;:3}">강남신논현</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="31780" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11466&quot;,&quot;operationtime&quot;:&quot;AM 10 ~ PM 11&quot;,&quot;storeCode&quot;:&quot;11466&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4927556,&quot;pointY&quot;:127.029612,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서초동 1337-34 1층&quot;,&quot;address&quot;:&quot;서울 서초구 서초동 1337-34 1층&quot;,&quot;name&quot;:&quot;CAFE31서초우성&quot;,&quot;tel&quot;:&quot;02-525-3136&quot;,&quot;distance&quot;:0.606,&quot;is_favorite&quot;:false,&quot;idx&quot;:3,&quot;num&quot;:4}">
			<h3 class="name">
				<small>4</small>
				CAFE31서초우성
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 서초동 1337-34 1층</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-525-3136</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10 ~ PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11466&quot;,&quot;operationtime&quot;:&quot;AM 10 ~ PM 11&quot;,&quot;storeCode&quot;:&quot;11466&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4927556,&quot;pointY&quot;:127.029612,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서초동 1337-34 1층&quot;,&quot;address&quot;:&quot;서울 서초구 서초동 1337-34 1층&quot;,&quot;name&quot;:&quot;CAFE31서초우성&quot;,&quot;tel&quot;:&quot;02-525-3136&quot;,&quot;distance&quot;:0.606,&quot;is_favorite&quot;:false,&quot;idx&quot;:3,&quot;num&quot;:4}">CAFE31서초우성</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11466" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;328B1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;328B1&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.495118,&quot;pointY&quot;:127.01766,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서초대로 331 &amp;#40;서초동, 정우빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 서초대로 331 &amp;#40;서초동, 정우빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;교대역&quot;,&quot;tel&quot;:&quot;02-537-4801&quot;,&quot;distance&quot;:0.939,&quot;is_favorite&quot;:false,&quot;idx&quot;:4,&quot;num&quot;:5}">
			<h3 class="name">
				<small>5</small>
				교대역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 서초대로 331 (서초동, 정우빌딩)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-537-4801</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;328B1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;328B1&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.495118,&quot;pointY&quot;:127.01766,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서초대로 331 &amp;#40;서초동, 정우빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 서초대로 331 &amp;#40;서초동, 정우빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;교대역&quot;,&quot;tel&quot;:&quot;02-537-4801&quot;,&quot;distance&quot;:0.939,&quot;is_favorite&quot;:false,&quot;idx&quot;:4,&quot;num&quot;:5}">교대역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="328B1" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32750&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32750&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4902537,&quot;pointY&quot;:127.014055,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서초대로46길 109 &amp;#40;서초동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 서초대로46길 109 &amp;#40;서초동&amp;#41;&quot;,&quot;name&quot;:&quot;교대&quot;,&quot;tel&quot;:&quot;02-523-3113&quot;,&quot;distance&quot;:1.476,&quot;is_favorite&quot;:false,&quot;idx&quot;:5,&quot;num&quot;:6}">
			<h3 class="name">
				<small>6</small>
				교대
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 서초대로46길 109 (서초동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-523-3113</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32750&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32750&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4902537,&quot;pointY&quot;:127.014055,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서초대로46길 109 &amp;#40;서초동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 서초대로46길 109 &amp;#40;서초동&amp;#41;&quot;,&quot;name&quot;:&quot;교대&quot;,&quot;tel&quot;:&quot;02-523-3113&quot;,&quot;distance&quot;:1.476,&quot;is_favorite&quot;:false,&quot;idx&quot;:5,&quot;num&quot;:6}">교대</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32750" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1239D&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1239D&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5028456,&quot;pointY&quot;:127.010586,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;고무래로8길 2&quot;,&quot;address&quot;:&quot;서울 서초구 고무래로8길 2&quot;,&quot;name&quot;:&quot;반포삼호가든&quot;,&quot;tel&quot;:&quot;02-594-3111&quot;,&quot;distance&quot;:1.6,&quot;is_favorite&quot;:false,&quot;idx&quot;:6,&quot;num&quot;:7}">
			<h3 class="name">
				<small>7</small>
				반포삼호가든
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 고무래로8길 2</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-594-3111</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1239D&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1239D&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5028456,&quot;pointY&quot;:127.010586,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;고무래로8길 2&quot;,&quot;address&quot;:&quot;서울 서초구 고무래로8길 2&quot;,&quot;name&quot;:&quot;반포삼호가든&quot;,&quot;tel&quot;:&quot;02-594-3111&quot;,&quot;distance&quot;:1.6,&quot;is_favorite&quot;:false,&quot;idx&quot;:6,&quot;num&quot;:7}">반포삼호가든</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1239D" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11100&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11100&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4843162,&quot;pointY&quot;:127.03479,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;남부순환로 지하 2585 &amp;#40;서초동, 양재역&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 남부순환로 지하 2585 &amp;#40;서초동, 양재역&amp;#41;&quot;,&quot;name&quot;:&quot;양재역사&quot;,&quot;tel&quot;:&quot;02-529-3120&quot;,&quot;distance&quot;:1.644,&quot;is_favorite&quot;:false,&quot;idx&quot;:7,&quot;num&quot;:8}">
			<h3 class="name">
				<small>8</small>
				양재역사
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 남부순환로 지하 2585 (서초동, 양재역)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-529-3120</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11100&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11100&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4843162,&quot;pointY&quot;:127.03479,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;남부순환로 지하 2585 &amp;#40;서초동, 양재역&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 남부순환로 지하 2585 &amp;#40;서초동, 양재역&amp;#41;&quot;,&quot;name&quot;:&quot;양재역사&quot;,&quot;tel&quot;:&quot;02-529-3120&quot;,&quot;distance&quot;:1.644,&quot;is_favorite&quot;:false,&quot;idx&quot;:7,&quot;num&quot;:8}">양재역사</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11100" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;112A1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;112A1&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4843334,&quot;pointY&quot;:127.037447,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;남부순환로 2620 지하1층&quot;,&quot;address&quot;:&quot;서울 서초구 남부순환로 2620 지하1층&quot;,&quot;name&quot;:&quot;양재사옥&quot;,&quot;tel&quot;:&quot;02-529-4108&quot;,&quot;distance&quot;:1.745,&quot;is_favorite&quot;:false,&quot;idx&quot;:8,&quot;num&quot;:9}">
			<h3 class="name">
				<small>9</small>
				양재사옥
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 남부순환로 2620 지하1층</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-529-4108</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;112A1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;112A1&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4843334,&quot;pointY&quot;:127.037447,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;남부순환로 2620 지하1층&quot;,&quot;address&quot;:&quot;서울 서초구 남부순환로 2620 지하1층&quot;,&quot;name&quot;:&quot;양재사옥&quot;,&quot;tel&quot;:&quot;02-529-4108&quot;,&quot;distance&quot;:1.745,&quot;is_favorite&quot;:false,&quot;idx&quot;:8,&quot;num&quot;:9}">양재사옥</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="112A1" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32934&quot;,&quot;operationtime&quot;:&quot;AM10~PM11&quot;,&quot;storeCode&quot;:&quot;32934&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.509592,&quot;pointY&quot;:127.013468,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;잠원동 58-24&quot;,&quot;address&quot;:&quot;서울 서초구 잠원동 58-24&quot;,&quot;name&quot;:&quot;반포역&quot;,&quot;tel&quot;:&quot;02-537-3137&quot;,&quot;distance&quot;:1.798,&quot;is_favorite&quot;:false,&quot;idx&quot;:9,&quot;num&quot;:10}">
			<h3 class="name">
				<small>10</small>
				반포역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 잠원동 58-24</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-537-3137</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM10~PM11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32934&quot;,&quot;operationtime&quot;:&quot;AM10~PM11&quot;,&quot;storeCode&quot;:&quot;32934&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.509592,&quot;pointY&quot;:127.013468,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;잠원동 58-24&quot;,&quot;address&quot;:&quot;서울 서초구 잠원동 58-24&quot;,&quot;name&quot;:&quot;반포역&quot;,&quot;tel&quot;:&quot;02-537-3137&quot;,&quot;distance&quot;:1.798,&quot;is_favorite&quot;:false,&quot;idx&quot;:9,&quot;num&quot;:10}">반포역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32934" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12591&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12591&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5053955,&quot;pointY&quot;:127.047184,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;역삼동 696-5 함지빌딩1층&quot;,&quot;address&quot;:&quot;서울 강남구 역삼동 696-5 함지빌딩1층&quot;,&quot;name&quot;:&quot;선릉&quot;,&quot;tel&quot;:&quot;02-555-0310&quot;,&quot;distance&quot;:1.907,&quot;is_favorite&quot;:false,&quot;idx&quot;:10,&quot;num&quot;:11}">
			<h3 class="name">
				<small>11</small>
				선릉
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 역삼동 696-5 함지빌딩1층</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-555-0310</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12591&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12591&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5053955,&quot;pointY&quot;:127.047184,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;역삼동 696-5 함지빌딩1층&quot;,&quot;address&quot;:&quot;서울 강남구 역삼동 696-5 함지빌딩1층&quot;,&quot;name&quot;:&quot;선릉&quot;,&quot;tel&quot;:&quot;02-555-0310&quot;,&quot;distance&quot;:1.907,&quot;is_favorite&quot;:false,&quot;idx&quot;:10,&quot;num&quot;:11}">선릉</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12591" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32753&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32753&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4842413,&quot;pointY&quot;:127.01369,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;반포대로10길 35 &amp;#40;서초동, 서초지웰&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 반포대로10길 35 &amp;#40;서초동, 서초지웰&amp;#41;&quot;,&quot;name&quot;:&quot;남부터미널역&quot;,&quot;tel&quot;:&quot;02-522-3132&quot;,&quot;distance&quot;:1.963,&quot;is_favorite&quot;:false,&quot;idx&quot;:11,&quot;num&quot;:12}">
			<h3 class="name">
				<small>12</small>
				남부터미널역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 반포대로10길 35 (서초동, 서초지웰)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-522-3132</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32753&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32753&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4842413,&quot;pointY&quot;:127.01369,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;반포대로10길 35 &amp;#40;서초동, 서초지웰&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 반포대로10길 35 &amp;#40;서초동, 서초지웰&amp;#41;&quot;,&quot;name&quot;:&quot;남부터미널역&quot;,&quot;tel&quot;:&quot;02-522-3132&quot;,&quot;distance&quot;:1.963,&quot;is_favorite&quot;:false,&quot;idx&quot;:11,&quot;num&quot;:12}">남부터미널역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32753" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;116B0&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;116B0&quot;,&quot;serviceInfo&quot;:&quot;DA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.50552,&quot;pointY&quot;:127.007062,&quot;address1&quot;:&quot;서울특별시&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;반포동 19-4 고속터미널역 지하 엔터식스스쇼핑&quot;,&quot;address&quot;:&quot;서울특별시 서초구 반포동 19-4 고속터미널역 지하 엔터식스스쇼핑&quot;,&quot;name&quot;:&quot;고속터미널역&quot;,&quot;tel&quot;:&quot;02-6321-6102&quot;,&quot;distance&quot;:2.001,&quot;is_favorite&quot;:false,&quot;idx&quot;:12,&quot;num&quot;:13}">
			<h3 class="name">
				<small>13</small>
				고속터미널역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울특별시 서초구 반포동 19-4 고속터미널역 지하 엔터식스스쇼핑</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-6321-6102</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;116B0&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;116B0&quot;,&quot;serviceInfo&quot;:&quot;DA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.50552,&quot;pointY&quot;:127.007062,&quot;address1&quot;:&quot;서울특별시&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;반포동 19-4 고속터미널역 지하 엔터식스스쇼핑&quot;,&quot;address&quot;:&quot;서울특별시 서초구 반포동 19-4 고속터미널역 지하 엔터식스스쇼핑&quot;,&quot;name&quot;:&quot;고속터미널역&quot;,&quot;tel&quot;:&quot;02-6321-6102&quot;,&quot;distance&quot;:2.001,&quot;is_favorite&quot;:false,&quot;idx&quot;:12,&quot;num&quot;:13}">고속터미널역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="116B0" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;329BL&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;329BL&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5064355,&quot;pointY&quot;:127.006836,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;반포동 19-4 강남고속버스터미널 경부선 1층&quot;,&quot;address&quot;:&quot;서울 서초구 반포동 19-4 강남고속버스터미널 경부선 1층&quot;,&quot;name&quot;:&quot;고속터미널경부선&quot;,&quot;tel&quot;:&quot;02-595-8231&quot;,&quot;distance&quot;:2.063,&quot;is_favorite&quot;:false,&quot;idx&quot;:13,&quot;num&quot;:14}">
			<h3 class="name">
				<small>14</small>
				고속터미널경부선
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 반포동 19-4 강남고속버스터미널 경부선 1층</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-595-8231</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;329BL&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;329BL&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5064355,&quot;pointY&quot;:127.006836,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;반포동 19-4 강남고속버스터미널 경부선 1층&quot;,&quot;address&quot;:&quot;서울 서초구 반포동 19-4 강남고속버스터미널 경부선 1층&quot;,&quot;name&quot;:&quot;고속터미널경부선&quot;,&quot;tel&quot;:&quot;02-595-8231&quot;,&quot;distance&quot;:2.063,&quot;is_favorite&quot;:false,&quot;idx&quot;:13,&quot;num&quot;:14}">고속터미널경부선</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="329BL" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1209B&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1209B&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5008976,&quot;pointY&quot;:127.051592,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;선릉로 402&quot;,&quot;address&quot;:&quot;서울 강남구 선릉로 402&quot;,&quot;name&quot;:&quot;대치&quot;,&quot;tel&quot;:&quot;02-558-3131&quot;,&quot;distance&quot;:2.133,&quot;is_favorite&quot;:false,&quot;idx&quot;:14,&quot;num&quot;:15}">
			<h3 class="name">
				<small>15</small>
				대치
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 선릉로 402</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-558-3131</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1209B&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1209B&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5008976,&quot;pointY&quot;:127.051592,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;선릉로 402&quot;,&quot;address&quot;:&quot;서울 강남구 선릉로 402&quot;,&quot;name&quot;:&quot;대치&quot;,&quot;tel&quot;:&quot;02-558-3131&quot;,&quot;distance&quot;:2.133,&quot;is_favorite&quot;:false,&quot;idx&quot;:14,&quot;num&quot;:15}">대치</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1209B" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12B51&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12B51&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4978067,&quot;pointY&quot;:127.052619,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;선릉로64길 5&quot;,&quot;address&quot;:&quot;서울 강남구 선릉로64길 5&quot;,&quot;name&quot;:&quot;대치2호&quot;,&quot;tel&quot;:&quot;02-3452-3031&quot;,&quot;distance&quot;:2.199,&quot;is_favorite&quot;:false,&quot;idx&quot;:15,&quot;num&quot;:16}">
			<h3 class="name">
				<small>16</small>
				대치2호
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 선릉로64길 5</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-3452-3031</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12B51&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12B51&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4978067,&quot;pointY&quot;:127.052619,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;선릉로64길 5&quot;,&quot;address&quot;:&quot;서울 강남구 선릉로64길 5&quot;,&quot;name&quot;:&quot;대치2호&quot;,&quot;tel&quot;:&quot;02-3452-3031&quot;,&quot;distance&quot;:2.199,&quot;is_favorite&quot;:false,&quot;idx&quot;:15,&quot;num&quot;:16}">대치2호</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12B51" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;31810&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;31810&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5184061,&quot;pointY&quot;:127.022379,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도산대로11길 15 &amp;#40;신사동&amp;#41;, 1층&quot;,&quot;address&quot;:&quot;서울 강남구 도산대로11길 15 &amp;#40;신사동&amp;#41;, 1층&quot;,&quot;name&quot;:&quot;세로수길&quot;,&quot;tel&quot;:&quot;02-542-8613&quot;,&quot;distance&quot;:2.317,&quot;is_favorite&quot;:false,&quot;idx&quot;:16,&quot;num&quot;:17}">
			<h3 class="name">
				<small>17</small>
				세로수길
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 도산대로11길 15 (신사동), 1층</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-542-8613</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;31810&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;31810&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5184061,&quot;pointY&quot;:127.022379,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도산대로11길 15 &amp;#40;신사동&amp;#41;, 1층&quot;,&quot;address&quot;:&quot;서울 강남구 도산대로11길 15 &amp;#40;신사동&amp;#41;, 1층&quot;,&quot;name&quot;:&quot;세로수길&quot;,&quot;tel&quot;:&quot;02-542-8613&quot;,&quot;distance&quot;:2.317,&quot;is_favorite&quot;:false,&quot;idx&quot;:16,&quot;num&quot;:17}">세로수길</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="31810" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;114B1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;114B1&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4985212,&quot;pointY&quot;:126.998236,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서래로 39 &amp;#40;반포동,1층&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 서래로 39 &amp;#40;반포동,1층&amp;#41;&quot;,&quot;name&quot;:&quot;반포서래마을&quot;,&quot;tel&quot;:&quot;02-592-3363&quot;,&quot;distance&quot;:2.596,&quot;is_favorite&quot;:false,&quot;idx&quot;:17,&quot;num&quot;:18}">
			<h3 class="name">
				<small>18</small>
				반포서래마을
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 서래로 39 (반포동,1층)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-592-3363</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;114B1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;114B1&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4985212,&quot;pointY&quot;:126.998236,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;서래로 39 &amp;#40;반포동,1층&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 서래로 39 &amp;#40;반포동,1층&amp;#41;&quot;,&quot;name&quot;:&quot;반포서래마을&quot;,&quot;tel&quot;:&quot;02-592-3363&quot;,&quot;distance&quot;:2.596,&quot;is_favorite&quot;:false,&quot;idx&quot;:17,&quot;num&quot;:18}">반포서래마을</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="114B1" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12A37&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12A37&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;pointX&quot;:37.5122503,&quot;pointY&quot;:127.05169,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;봉은사로 474&quot;,&quot;address&quot;:&quot;서울 강남구 봉은사로 474&quot;,&quot;name&quot;:&quot;삼성플래티넘&quot;,&quot;tel&quot;:&quot;02-556-5115&quot;,&quot;distance&quot;:2.645,&quot;is_favorite&quot;:false,&quot;idx&quot;:18,&quot;num&quot;:19}">
			<h3 class="name">
				<small>19</small>
				삼성플래티넘
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 봉은사로 474</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-556-5115</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12A37&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12A37&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;pointX&quot;:37.5122503,&quot;pointY&quot;:127.05169,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;봉은사로 474&quot;,&quot;address&quot;:&quot;서울 강남구 봉은사로 474&quot;,&quot;name&quot;:&quot;삼성플래티넘&quot;,&quot;tel&quot;:&quot;02-556-5115&quot;,&quot;distance&quot;:2.645,&quot;is_favorite&quot;:false,&quot;idx&quot;:18,&quot;num&quot;:19}">삼성플래티넘</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12A37" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1209F&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1209F&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4824562,&quot;pointY&quot;:127.00485,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;방배3동 1001-31&quot;,&quot;address&quot;:&quot;서울 서초구 방배3동 1001-31&quot;,&quot;name&quot;:&quot;서초&quot;,&quot;tel&quot;:&quot;02-583-0331&quot;,&quot;distance&quot;:2.651,&quot;is_favorite&quot;:false,&quot;idx&quot;:19,&quot;num&quot;:20}">
			<h3 class="name">
				<small>20</small>
				서초
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 방배3동 1001-31</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-583-0331</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1209F&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1209F&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4824562,&quot;pointY&quot;:127.00485,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;방배3동 1001-31&quot;,&quot;address&quot;:&quot;서울 서초구 방배3동 1001-31&quot;,&quot;name&quot;:&quot;서초&quot;,&quot;tel&quot;:&quot;02-583-0331&quot;,&quot;distance&quot;:2.651,&quot;is_favorite&quot;:false,&quot;idx&quot;:19,&quot;num&quot;:20}">서초</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1209F" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1255F&quot;,&quot;operationtime&quot;:&quot;AM 10 ~ PM 11&quot;,&quot;storeCode&quot;:&quot;1255F&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;B&quot;,&quot;pointX&quot;:37.4784196,&quot;pointY&quot;:127.046433,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;개포동 1238-7&quot;,&quot;address&quot;:&quot;서울 강남구 개포동 1238-7&quot;,&quot;name&quot;:&quot;포이동&quot;,&quot;tel&quot;:&quot;02-571-3130&quot;,&quot;distance&quot;:2.732,&quot;is_favorite&quot;:false,&quot;idx&quot;:20,&quot;num&quot;:21}">
			<h3 class="name">
				<small>21</small>
				포이동
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 개포동 1238-7</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-571-3130</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10 ~ PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1255F&quot;,&quot;operationtime&quot;:&quot;AM 10 ~ PM 11&quot;,&quot;storeCode&quot;:&quot;1255F&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;B&quot;,&quot;pointX&quot;:37.4784196,&quot;pointY&quot;:127.046433,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;개포동 1238-7&quot;,&quot;address&quot;:&quot;서울 강남구 개포동 1238-7&quot;,&quot;name&quot;:&quot;포이동&quot;,&quot;tel&quot;:&quot;02-571-3130&quot;,&quot;distance&quot;:2.732,&quot;is_favorite&quot;:false,&quot;idx&quot;:20,&quot;num&quot;:21}">포이동</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1255F" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;31770&quot;,&quot;operationtime&quot;:&quot;AM 8~PM 11&quot;,&quot;storeCode&quot;:&quot;31770&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;B&quot;,&quot;pointX&quot;:37.5231397,&quot;pointY&quot;:127.037702,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도산대로 327 &amp;#40;신사동&amp;#41; SGF 청담타워 3층&quot;,&quot;address&quot;:&quot;서울 강남구 도산대로 327 &amp;#40;신사동&amp;#41; SGF 청담타워 3층&quot;,&quot;name&quot;:&quot;BROWN청담&quot;,&quot;tel&quot;:&quot;02-547-1205&quot;,&quot;distance&quot;:2.932,&quot;is_favorite&quot;:false,&quot;idx&quot;:21,&quot;num&quot;:22}">
			<h3 class="name">
				<small>22</small>
				BROWN청담
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 도산대로 327 (신사동) SGF 청담타워 3층</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-547-1205</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 8~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;31770&quot;,&quot;operationtime&quot;:&quot;AM 8~PM 11&quot;,&quot;storeCode&quot;:&quot;31770&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;B&quot;,&quot;pointX&quot;:37.5231397,&quot;pointY&quot;:127.037702,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도산대로 327 &amp;#40;신사동&amp;#41; SGF 청담타워 3층&quot;,&quot;address&quot;:&quot;서울 강남구 도산대로 327 &amp;#40;신사동&amp;#41; SGF 청담타워 3층&quot;,&quot;name&quot;:&quot;BROWN청담&quot;,&quot;tel&quot;:&quot;02-547-1205&quot;,&quot;distance&quot;:2.932,&quot;is_favorite&quot;:false,&quot;idx&quot;:21,&quot;num&quot;:22}">BROWN청담</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="31770" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1219D&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1219D&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4988205,&quot;pointY&quot;:127.061644,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도곡로 504 &amp;#40;대치동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 도곡로 504 &amp;#40;대치동&amp;#41;&quot;,&quot;name&quot;:&quot;은마사거리&quot;,&quot;tel&quot;:&quot;02-555-0052&quot;,&quot;distance&quot;:2.997,&quot;is_favorite&quot;:false,&quot;idx&quot;:22,&quot;num&quot;:23}">
			<h3 class="name">
				<small>23</small>
				은마사거리
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 도곡로 504 (대치동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-555-0052</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1219D&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1219D&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4988205,&quot;pointY&quot;:127.061644,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도곡로 504 &amp;#40;대치동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 도곡로 504 &amp;#40;대치동&amp;#41;&quot;,&quot;name&quot;:&quot;은마사거리&quot;,&quot;tel&quot;:&quot;02-555-0052&quot;,&quot;distance&quot;:2.997,&quot;is_favorite&quot;:false,&quot;idx&quot;:22,&quot;num&quot;:23}">은마사거리</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1219D" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32852&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32852&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4832725,&quot;pointY&quot;:126.996766,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;방배로 100 &amp;#40;방배동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 방배로 100 &amp;#40;방배동&amp;#41;&quot;,&quot;name&quot;:&quot;방배역&quot;,&quot;tel&quot;:&quot;02-3461-3131&quot;,&quot;distance&quot;:3.178,&quot;is_favorite&quot;:false,&quot;idx&quot;:23,&quot;num&quot;:24}">
			<h3 class="name">
				<small>24</small>
				방배역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 방배로 100 (방배동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-3461-3131</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32852&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32852&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4832725,&quot;pointY&quot;:126.996766,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;방배로 100 &amp;#40;방배동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 방배로 100 &amp;#40;방배동&amp;#41;&quot;,&quot;name&quot;:&quot;방배역&quot;,&quot;tel&quot;:&quot;02-3461-3131&quot;,&quot;distance&quot;:3.178,&quot;is_favorite&quot;:false,&quot;idx&quot;:23,&quot;num&quot;:24}">방배역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32852" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;42841&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;42841&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4913129,&quot;pointY&quot;:126.991669,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;방배로 200 &amp;#40;방배동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 방배로 200 &amp;#40;방배동&amp;#41;&quot;,&quot;name&quot;:&quot;내방&quot;,&quot;tel&quot;:&quot;02-537-7907&quot;,&quot;distance&quot;:3.26,&quot;is_favorite&quot;:false,&quot;idx&quot;:24,&quot;num&quot;:25}">
			<h3 class="name">
				<small>25</small>
				내방
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 방배로 200 (방배동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-537-7907</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;42841&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;42841&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.4913129,&quot;pointY&quot;:126.991669,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;방배로 200 &amp;#40;방배동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 방배로 200 &amp;#40;방배동&amp;#41;&quot;,&quot;name&quot;:&quot;내방&quot;,&quot;tel&quot;:&quot;02-537-7907&quot;,&quot;distance&quot;:3.26,&quot;is_favorite&quot;:false,&quot;idx&quot;:24,&quot;num&quot;:25}">내방</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="42841" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11465&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11465&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5274308,&quot;pointY&quot;:127.029539,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;압구정로 206 &amp;#40;신사동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 압구정로 206 &amp;#40;신사동&amp;#41;&quot;,&quot;name&quot;:&quot;압구정역&quot;,&quot;tel&quot;:&quot;02-517-5837&quot;,&quot;distance&quot;:3.276,&quot;is_favorite&quot;:false,&quot;idx&quot;:25,&quot;num&quot;:26}">
			<h3 class="name">
				<small>26</small>
				압구정역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 압구정로 206 (신사동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-517-5837</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11465&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11465&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5274308,&quot;pointY&quot;:127.029539,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;압구정로 206 &amp;#40;신사동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 압구정로 206 &amp;#40;신사동&amp;#41;&quot;,&quot;name&quot;:&quot;압구정역&quot;,&quot;tel&quot;:&quot;02-517-5837&quot;,&quot;distance&quot;:3.276,&quot;is_favorite&quot;:false,&quot;idx&quot;:25,&quot;num&quot;:26}">압구정역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11465" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;122B2&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;122B2&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4696411,&quot;pointY&quot;:127.041628,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;동산로 18&quot;,&quot;address&quot;:&quot;서울 서초구 동산로 18&quot;,&quot;name&quot;:&quot;양재매헌&quot;,&quot;tel&quot;:&quot;02-577-5531&quot;,&quot;distance&quot;:3.382,&quot;is_favorite&quot;:false,&quot;idx&quot;:26,&quot;num&quot;:27}">
			<h3 class="name">
				<small>27</small>
				양재매헌
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 동산로 18</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-577-5531</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;122B2&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;122B2&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4696411,&quot;pointY&quot;:127.041628,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;동산로 18&quot;,&quot;address&quot;:&quot;서울 서초구 동산로 18&quot;,&quot;name&quot;:&quot;양재매헌&quot;,&quot;tel&quot;:&quot;02-577-5531&quot;,&quot;distance&quot;:3.382,&quot;is_favorite&quot;:false,&quot;idx&quot;:26,&quot;num&quot;:27}">양재매헌</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="122B2" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32766&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32766&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5248739,&quot;pointY&quot;:127.050378,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도산대로 521 &amp;#40;청담동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 도산대로 521 &amp;#40;청담동&amp;#41;&quot;,&quot;name&quot;:&quot;청담사거리&quot;,&quot;tel&quot;:&quot;02-3445-3433&quot;,&quot;distance&quot;:3.596,&quot;is_favorite&quot;:false,&quot;idx&quot;:27,&quot;num&quot;:28}">
			<h3 class="name">
				<small>28</small>
				청담사거리
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 도산대로 521 (청담동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-3445-3433</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32766&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32766&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5248739,&quot;pointY&quot;:127.050378,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;도산대로 521 &amp;#40;청담동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 도산대로 521 &amp;#40;청담동&amp;#41;&quot;,&quot;name&quot;:&quot;청담사거리&quot;,&quot;tel&quot;:&quot;02-3445-3433&quot;,&quot;distance&quot;:3.596,&quot;is_favorite&quot;:false,&quot;idx&quot;:27,&quot;num&quot;:28}">청담사거리</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32766" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;126A7&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;126A7&quot;,&quot;serviceInfo&quot;:&quot;DAF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4892643,&quot;pointY&quot;:127.06836,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;개포동 186-16&quot;,&quot;address&quot;:&quot;서울 강남구 개포동 186-16&quot;,&quot;name&quot;:&quot;개포&quot;,&quot;tel&quot;:&quot;02-2226-3187&quot;,&quot;distance&quot;:3.716,&quot;is_favorite&quot;:false,&quot;idx&quot;:28,&quot;num&quot;:29}">
			<h3 class="name">
				<small>29</small>
				개포
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 개포동 186-16</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-2226-3187</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;126A7&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;126A7&quot;,&quot;serviceInfo&quot;:&quot;DAF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4892643,&quot;pointY&quot;:127.06836,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;개포동 186-16&quot;,&quot;address&quot;:&quot;서울 강남구 개포동 186-16&quot;,&quot;name&quot;:&quot;개포&quot;,&quot;tel&quot;:&quot;02-2226-3187&quot;,&quot;distance&quot;:3.716,&quot;is_favorite&quot;:false,&quot;idx&quot;:28,&quot;num&quot;:29}">개포</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="126A7" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1235E&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1235E&quot;,&quot;serviceInfo&quot;:&quot;CDAE&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4642622,&quot;pointY&quot;:127.025331,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;태봉로 70, 107-1호&quot;,&quot;address&quot;:&quot;서울 서초구 태봉로 70, 107-1호&quot;,&quot;name&quot;:&quot;서초우면&quot;,&quot;tel&quot;:&quot;02-577-1031&quot;,&quot;distance&quot;:3.753,&quot;is_favorite&quot;:false,&quot;idx&quot;:29,&quot;num&quot;:30}">
			<h3 class="name">
				<small>30</small>
				서초우면
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 태봉로 70, 107-1호</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-577-1031</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1235E&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1235E&quot;,&quot;serviceInfo&quot;:&quot;CDAE&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4642622,&quot;pointY&quot;:127.025331,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;태봉로 70, 107-1호&quot;,&quot;address&quot;:&quot;서울 서초구 태봉로 70, 107-1호&quot;,&quot;name&quot;:&quot;서초우면&quot;,&quot;tel&quot;:&quot;02-577-1031&quot;,&quot;distance&quot;:3.753,&quot;is_favorite&quot;:false,&quot;idx&quot;:29,&quot;num&quot;:30}">서초우면</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1235E" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12194&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12194&quot;,&quot;pointX&quot;:37.4873833,&quot;pointY&quot;:126.980993,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;동작구&quot;,&quot;address3&quot;:&quot;동작대로 27길 15, 101호&quot;,&quot;address&quot;:&quot;서울 동작구 동작대로 27길 15, 101호&quot;,&quot;name&quot;:&quot;이수역&quot;,&quot;tel&quot;:&quot;02-591-0310&quot;,&quot;distance&quot;:4.281,&quot;is_favorite&quot;:false,&quot;idx&quot;:30,&quot;num&quot;:31}">
			<h3 class="name">
				<small>31</small>
				이수역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 동작구 동작대로 27길 15, 101호</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-591-0310</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12194&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12194&quot;,&quot;pointX&quot;:37.4873833,&quot;pointY&quot;:126.980993,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;동작구&quot;,&quot;address3&quot;:&quot;동작대로 27길 15, 101호&quot;,&quot;address&quot;:&quot;서울 동작구 동작대로 27길 15, 101호&quot;,&quot;name&quot;:&quot;이수역&quot;,&quot;tel&quot;:&quot;02-591-0310&quot;,&quot;distance&quot;:4.281,&quot;is_favorite&quot;:false,&quot;idx&quot;:30,&quot;num&quot;:31}">이수역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12194" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;31750&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;31750&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.533203,&quot;pointY&quot;:127.005521,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;대사관로 66-1 &amp;#40;한남동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 용산구 대사관로 66-1 &amp;#40;한남동&amp;#41;&quot;,&quot;name&quot;:&quot;한남&quot;,&quot;tel&quot;:&quot;02-749-3868&quot;,&quot;distance&quot;:4.373,&quot;is_favorite&quot;:false,&quot;idx&quot;:31,&quot;num&quot;:32}">
			<h3 class="name">
				<small>32</small>
				한남
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 용산구 대사관로 66-1 (한남동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-749-3868</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;31750&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;31750&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.533203,&quot;pointY&quot;:127.005521,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;대사관로 66-1 &amp;#40;한남동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 용산구 대사관로 66-1 &amp;#40;한남동&amp;#41;&quot;,&quot;name&quot;:&quot;한남&quot;,&quot;tel&quot;:&quot;02-749-3868&quot;,&quot;distance&quot;:4.373,&quot;is_favorite&quot;:false,&quot;idx&quot;:31,&quot;num&quot;:32}">한남</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="31750" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;31980&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 10&amp;#58;30&quot;,&quot;storeCode&quot;:&quot;31980&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5350131,&quot;pointY&quot;:127.010601,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;독서당로 93 &amp;#40;한남동, 멕시코대사관&amp;#41;&quot;,&quot;address&quot;:&quot;서울 용산구 독서당로 93 &amp;#40;한남동, 멕시코대사관&amp;#41;&quot;,&quot;name&quot;:&quot;HIVE한남&quot;,&quot;tel&quot;:&quot;02-792-1125&quot;,&quot;distance&quot;:4.381,&quot;is_favorite&quot;:false,&quot;idx&quot;:32,&quot;num&quot;:33}">
			<h3 class="name">
				<small>33</small>
				HIVE한남
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 용산구 독서당로 93 (한남동, 멕시코대사관)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-792-1125</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 10:30</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;31980&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 10&amp;#58;30&quot;,&quot;storeCode&quot;:&quot;31980&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5350131,&quot;pointY&quot;:127.010601,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;독서당로 93 &amp;#40;한남동, 멕시코대사관&amp;#41;&quot;,&quot;address&quot;:&quot;서울 용산구 독서당로 93 &amp;#40;한남동, 멕시코대사관&amp;#41;&quot;,&quot;name&quot;:&quot;HIVE한남&quot;,&quot;tel&quot;:&quot;02-792-1125&quot;,&quot;distance&quot;:4.381,&quot;is_favorite&quot;:false,&quot;idx&quot;:32,&quot;num&quot;:33}">HIVE한남</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="31980" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32824&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32824&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4803952,&quot;pointY&quot;:126.982209,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;동작대로 44 &amp;#40;방배동, 은혜빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 동작대로 44 &amp;#40;방배동, 은혜빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;사당방배&quot;,&quot;tel&quot;:&quot;02-525-9532&quot;,&quot;distance&quot;:4.46,&quot;is_favorite&quot;:false,&quot;idx&quot;:33,&quot;num&quot;:34}">
			<h3 class="name">
				<small>34</small>
				사당방배
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 서초구 동작대로 44 (방배동, 은혜빌딩)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-525-9532</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32824&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32824&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4803952,&quot;pointY&quot;:126.982209,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;서초구&quot;,&quot;address3&quot;:&quot;동작대로 44 &amp;#40;방배동, 은혜빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 서초구 동작대로 44 &amp;#40;방배동, 은혜빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;사당방배&quot;,&quot;tel&quot;:&quot;02-525-9532&quot;,&quot;distance&quot;:4.46,&quot;is_favorite&quot;:false,&quot;idx&quot;:33,&quot;num&quot;:34}">사당방배</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32824" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32787&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32787&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4912679,&quot;pointY&quot;:127.08033,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;개포로110길 43 &amp;#40;일원동, 개포한신아파트&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 개포로110길 43 &amp;#40;일원동, 개포한신아파트&amp;#41;&quot;,&quot;name&quot;:&quot;일원&quot;,&quot;tel&quot;:&quot;02-2226-6264&quot;,&quot;distance&quot;:4.702,&quot;is_favorite&quot;:false,&quot;idx&quot;:34,&quot;num&quot;:35}">
			<h3 class="name">
				<small>35</small>
				일원
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 강남구 개포로110길 43 (일원동, 개포한신아파트)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-2226-6264</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32787&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32787&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4912679,&quot;pointY&quot;:127.08033,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;강남구&quot;,&quot;address3&quot;:&quot;개포로110길 43 &amp;#40;일원동, 개포한신아파트&amp;#41;&quot;,&quot;address&quot;:&quot;서울 강남구 개포로110길 43 &amp;#40;일원동, 개포한신아파트&amp;#41;&quot;,&quot;name&quot;:&quot;일원&quot;,&quot;tel&quot;:&quot;02-2226-6264&quot;,&quot;distance&quot;:4.702,&quot;is_favorite&quot;:false,&quot;idx&quot;:34,&quot;num&quot;:35}">일원</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32787" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12563&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12563&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4752918,&quot;pointY&quot;:126.981301,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;관악구&quot;,&quot;address3&quot;:&quot;과천대로 949&quot;,&quot;address&quot;:&quot;서울 관악구 과천대로 949&quot;,&quot;name&quot;:&quot;사당역&quot;,&quot;tel&quot;:&quot;02-585-3227&quot;,&quot;distance&quot;:4.804,&quot;is_favorite&quot;:false,&quot;idx&quot;:35,&quot;num&quot;:36}">
			<h3 class="name">
				<small>36</small>
				사당역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 관악구 과천대로 949</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-585-3227</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12563&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12563&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.4752918,&quot;pointY&quot;:126.981301,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;관악구&quot;,&quot;address3&quot;:&quot;과천대로 949&quot;,&quot;address&quot;:&quot;서울 관악구 과천대로 949&quot;,&quot;name&quot;:&quot;사당역&quot;,&quot;tel&quot;:&quot;02-585-3227&quot;,&quot;distance&quot;:4.804,&quot;is_favorite&quot;:false,&quot;idx&quot;:35,&quot;num&quot;:36}">사당역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12563" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32981&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32981&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5421863,&quot;pointY&quot;:127.016615,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;한림말1길 10 &amp;#40;옥수동, 예건네스빌&amp;#41; 101호&quot;,&quot;address&quot;:&quot;서울 성동구 한림말1길 10 &amp;#40;옥수동, 예건네스빌&amp;#41; 101호&quot;,&quot;name&quot;:&quot;옥수역&quot;,&quot;tel&quot;:&quot;02-2297-3131&quot;,&quot;distance&quot;:5.007,&quot;is_favorite&quot;:false,&quot;idx&quot;:36,&quot;num&quot;:37}">
			<h3 class="name">
				<small>37</small>
				옥수역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 성동구 한림말1길 10 (옥수동, 예건네스빌) 101호</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-2297-3131</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32981&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32981&quot;,&quot;serviceInfo&quot;:&quot;C&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5421863,&quot;pointY&quot;:127.016615,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;한림말1길 10 &amp;#40;옥수동, 예건네스빌&amp;#41; 101호&quot;,&quot;address&quot;:&quot;서울 성동구 한림말1길 10 &amp;#40;옥수동, 예건네스빌&amp;#41; 101호&quot;,&quot;name&quot;:&quot;옥수역&quot;,&quot;tel&quot;:&quot;02-2297-3131&quot;,&quot;distance&quot;:5.007,&quot;is_favorite&quot;:false,&quot;idx&quot;:36,&quot;num&quot;:37}">옥수역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32981" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;62154&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;62154&quot;,&quot;serviceInfo&quot;:&quot;BCDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5109016,&quot;pointY&quot;:127.082159,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;송파구&quot;,&quot;address3&quot;:&quot;백제고분로7길 29 &amp;#40;잠실동, 우림빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 송파구 백제고분로7길 29 &amp;#40;잠실동, 우림빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;잠실새내중앙&quot;,&quot;tel&quot;:&quot;02-420-7971&quot;,&quot;distance&quot;:5.013,&quot;is_favorite&quot;:false,&quot;idx&quot;:37,&quot;num&quot;:38}">
			<h3 class="name">
				<small>38</small>
				잠실새내중앙
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 송파구 백제고분로7길 29 (잠실동, 우림빌딩)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-420-7971</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;62154&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;62154&quot;,&quot;serviceInfo&quot;:&quot;BCDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5109016,&quot;pointY&quot;:127.082159,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;송파구&quot;,&quot;address3&quot;:&quot;백제고분로7길 29 &amp;#40;잠실동, 우림빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 송파구 백제고분로7길 29 &amp;#40;잠실동, 우림빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;잠실새내중앙&quot;,&quot;tel&quot;:&quot;02-420-7971&quot;,&quot;distance&quot;:5.013,&quot;is_favorite&quot;:false,&quot;idx&quot;:37,&quot;num&quot;:38}">잠실새내중앙</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="62154" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11854&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11854&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5342999,&quot;pointY&quot;:126.993653,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;이태원로 176-1 &amp;#40;이태원동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 용산구 이태원로 176-1 &amp;#40;이태원동&amp;#41;&quot;,&quot;name&quot;:&quot;이태원&quot;,&quot;tel&quot;:&quot;02-795-1830&quot;,&quot;distance&quot;:5.027,&quot;is_favorite&quot;:false,&quot;idx&quot;:38,&quot;num&quot;:39}">
			<h3 class="name">
				<small>39</small>
				이태원
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 용산구 이태원로 176-1 (이태원동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-795-1830</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11854&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11854&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5342999,&quot;pointY&quot;:126.993653,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;이태원로 176-1 &amp;#40;이태원동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 용산구 이태원로 176-1 &amp;#40;이태원동&amp;#41;&quot;,&quot;name&quot;:&quot;이태원&quot;,&quot;tel&quot;:&quot;02-795-1830&quot;,&quot;distance&quot;:5.027,&quot;is_favorite&quot;:false,&quot;idx&quot;:38,&quot;num&quot;:39}">이태원</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11854" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12562&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12562&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4831381,&quot;pointY&quot;:126.973724,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;동작구&quot;,&quot;address3&quot;:&quot;사당로 236&quot;,&quot;address&quot;:&quot;서울 동작구 사당로 236&quot;,&quot;name&quot;:&quot;남성역&quot;,&quot;tel&quot;:&quot;02-3474-3131&quot;,&quot;distance&quot;:5.035,&quot;is_favorite&quot;:false,&quot;idx&quot;:39,&quot;num&quot;:40}">
			<h3 class="name">
				<small>40</small>
				남성역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 동작구 사당로 236</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-3474-3131</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12562&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12562&quot;,&quot;serviceInfo&quot;:&quot;CDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.4831381,&quot;pointY&quot;:126.973724,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;동작구&quot;,&quot;address3&quot;:&quot;사당로 236&quot;,&quot;address&quot;:&quot;서울 동작구 사당로 236&quot;,&quot;name&quot;:&quot;남성역&quot;,&quot;tel&quot;:&quot;02-3474-3131&quot;,&quot;distance&quot;:5.035,&quot;is_favorite&quot;:false,&quot;idx&quot;:39,&quot;num&quot;:40}">남성역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12562" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11651&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11651&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.518449,&quot;pointY&quot;:126.976019,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;이촌동 300-301 삼익상가 108, 109호&quot;,&quot;address&quot;:&quot;서울 용산구 이촌동 300-301 삼익상가 108, 109호&quot;,&quot;name&quot;:&quot;동부이촌&quot;,&quot;tel&quot;:&quot;02-792-0031&quot;,&quot;distance&quot;:5.09,&quot;is_favorite&quot;:false,&quot;idx&quot;:40,&quot;num&quot;:41}">
			<h3 class="name">
				<small>41</small>
				동부이촌
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 용산구 이촌동 300-301 삼익상가 108, 109호</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-792-0031</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11651&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11651&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.518449,&quot;pointY&quot;:126.976019,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;이촌동 300-301 삼익상가 108, 109호&quot;,&quot;address&quot;:&quot;서울 용산구 이촌동 300-301 삼익상가 108, 109호&quot;,&quot;name&quot;:&quot;동부이촌&quot;,&quot;tel&quot;:&quot;02-792-0031&quot;,&quot;distance&quot;:5.09,&quot;is_favorite&quot;:false,&quot;idx&quot;:40,&quot;num&quot;:41}">동부이촌</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11651" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12246&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12246&quot;,&quot;serviceInfo&quot;:&quot;BCDAF&quot;,&quot;pointX&quot;:37.5398742,&quot;pointY&quot;:127.053475,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;뚝섬로 379&quot;,&quot;address&quot;:&quot;서울 성동구 뚝섬로 379&quot;,&quot;name&quot;:&quot;성수이마트&quot;,&quot;tel&quot;:&quot;02-3409-3335&quot;,&quot;distance&quot;:5.181,&quot;is_favorite&quot;:false,&quot;idx&quot;:41,&quot;num&quot;:42}">
			<h3 class="name">
				<small>42</small>
				성수이마트
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 성동구 뚝섬로 379</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-3409-3335</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12246&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12246&quot;,&quot;serviceInfo&quot;:&quot;BCDAF&quot;,&quot;pointX&quot;:37.5398742,&quot;pointY&quot;:127.053475,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;뚝섬로 379&quot;,&quot;address&quot;:&quot;서울 성동구 뚝섬로 379&quot;,&quot;name&quot;:&quot;성수이마트&quot;,&quot;tel&quot;:&quot;02-3409-3335&quot;,&quot;distance&quot;:5.181,&quot;is_favorite&quot;:false,&quot;idx&quot;:41,&quot;num&quot;:42}">성수이마트</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12246" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;124A1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;124A1&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.5113659,&quot;pointY&quot;:127.085113,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;송파구&quot;,&quot;address3&quot;:&quot;올림픽로 130 &amp;#40;잠실동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 송파구 올림픽로 130 &amp;#40;잠실동&amp;#41;&quot;,&quot;name&quot;:&quot;신천역&quot;,&quot;tel&quot;:&quot;070-4122-8236&quot;,&quot;distance&quot;:5.277,&quot;is_favorite&quot;:false,&quot;idx&quot;:42,&quot;num&quot;:43}">
			<h3 class="name">
				<small>43</small>
				신천역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 송파구 올림픽로 130 (잠실동)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>070-4122-8236</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;124A1&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;124A1&quot;,&quot;serviceInfo&quot;:&quot;CDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.5113659,&quot;pointY&quot;:127.085113,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;송파구&quot;,&quot;address3&quot;:&quot;올림픽로 130 &amp;#40;잠실동&amp;#41;&quot;,&quot;address&quot;:&quot;서울 송파구 올림픽로 130 &amp;#40;잠실동&amp;#41;&quot;,&quot;name&quot;:&quot;신천역&quot;,&quot;tel&quot;:&quot;070-4122-8236&quot;,&quot;distance&quot;:5.277,&quot;is_favorite&quot;:false,&quot;idx&quot;:42,&quot;num&quot;:43}">신천역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="124A1" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1254C&quot;,&quot;operationtime&quot;:&quot;AM 10 ~ PM 11&quot;,&quot;storeCode&quot;:&quot;1254C&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5480055,&quot;pointY&quot;:127.023945,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;금호동4가 144-1&amp;#40;독서당로 314&amp;#41;&quot;,&quot;address&quot;:&quot;서울 성동구 금호동4가 144-1&amp;#40;독서당로 314&amp;#41;&quot;,&quot;name&quot;:&quot;성동금호&quot;,&quot;tel&quot;:&quot;02-2282-5605&quot;,&quot;distance&quot;:5.568,&quot;is_favorite&quot;:false,&quot;idx&quot;:43,&quot;num&quot;:44}">
			<h3 class="name">
				<small>44</small>
				성동금호
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 성동구 금호동4가 144-1(독서당로 314)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-2282-5605</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10 ~ PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1254C&quot;,&quot;operationtime&quot;:&quot;AM 10 ~ PM 11&quot;,&quot;storeCode&quot;:&quot;1254C&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5480055,&quot;pointY&quot;:127.023945,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;금호동4가 144-1&amp;#40;독서당로 314&amp;#41;&quot;,&quot;address&quot;:&quot;서울 성동구 금호동4가 144-1&amp;#40;독서당로 314&amp;#41;&quot;,&quot;name&quot;:&quot;성동금호&quot;,&quot;tel&quot;:&quot;02-2282-5605&quot;,&quot;distance&quot;:5.568,&quot;is_favorite&quot;:false,&quot;idx&quot;:43,&quot;num&quot;:44}">성동금호</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1254C" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1203B&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1203B&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5343146,&quot;pointY&quot;:127.071245,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;광진구&quot;,&quot;address3&quot;:&quot;뚝섬로 552&quot;,&quot;address&quot;:&quot;서울 광진구 뚝섬로 552&quot;,&quot;name&quot;:&quot;자양&quot;,&quot;tel&quot;:&quot;02-3425-3131&quot;,&quot;distance&quot;:5.572,&quot;is_favorite&quot;:false,&quot;idx&quot;:44,&quot;num&quot;:45}">
			<h3 class="name">
				<small>45</small>
				자양
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 광진구 뚝섬로 552</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-3425-3131</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1203B&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1203B&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5343146,&quot;pointY&quot;:127.071245,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;광진구&quot;,&quot;address3&quot;:&quot;뚝섬로 552&quot;,&quot;address&quot;:&quot;서울 광진구 뚝섬로 552&quot;,&quot;name&quot;:&quot;자양&quot;,&quot;tel&quot;:&quot;02-3425-3131&quot;,&quot;distance&quot;:5.572,&quot;is_favorite&quot;:false,&quot;idx&quot;:44,&quot;num&quot;:45}">자양</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1203B" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;11681&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11681&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5396572,&quot;pointY&quot;:126.991849,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;이태원동 211-14&quot;,&quot;address&quot;:&quot;서울 용산구 이태원동 211-14&quot;,&quot;name&quot;:&quot;경리단길&quot;,&quot;tel&quot;:&quot;02-790-1007&quot;,&quot;distance&quot;:5.605,&quot;is_favorite&quot;:false,&quot;idx&quot;:45,&quot;num&quot;:46}">
			<h3 class="name">
				<small>46</small>
				경리단길
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 용산구 이태원동 211-14</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-790-1007</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;11681&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;11681&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;BC&quot;,&quot;pointX&quot;:37.5396572,&quot;pointY&quot;:126.991849,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;용산구&quot;,&quot;address3&quot;:&quot;이태원동 211-14&quot;,&quot;address&quot;:&quot;서울 용산구 이태원동 211-14&quot;,&quot;name&quot;:&quot;경리단길&quot;,&quot;tel&quot;:&quot;02-790-1007&quot;,&quot;distance&quot;:5.605,&quot;is_favorite&quot;:false,&quot;idx&quot;:45,&quot;num&quot;:46}">경리단길</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="11681" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;32794&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32794&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5476859,&quot;pointY&quot;:127.044744,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;왕십리로 114 &amp;#40;성수동1가, 신한빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 성동구 왕십리로 114 &amp;#40;성수동1가, 신한빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;서울숲&quot;,&quot;tel&quot;:&quot;02-497-6211&quot;,&quot;distance&quot;:5.724,&quot;is_favorite&quot;:false,&quot;idx&quot;:46,&quot;num&quot;:47}">
			<h3 class="name">
				<small>47</small>
				서울숲
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 성동구 왕십리로 114 (성수동1가, 신한빌딩)</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-497-6211</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;32794&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;32794&quot;,&quot;serviceInfo&quot;:&quot;BCDA&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5476859,&quot;pointY&quot;:127.044744,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;왕십리로 114 &amp;#40;성수동1가, 신한빌딩&amp;#41;&quot;,&quot;address&quot;:&quot;서울 성동구 왕십리로 114 &amp;#40;성수동1가, 신한빌딩&amp;#41;&quot;,&quot;name&quot;:&quot;서울숲&quot;,&quot;tel&quot;:&quot;02-497-6211&quot;,&quot;distance&quot;:5.724,&quot;is_favorite&quot;:false,&quot;idx&quot;:46,&quot;num&quot;:47}">서울숲</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="32794" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1233A&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1233A&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5455681,&quot;pointY&quot;:127.054384,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;아차산로7길 4&quot;,&quot;address&quot;:&quot;서울 성동구 아차산로7길 4&quot;,&quot;name&quot;:&quot;성수역&quot;,&quot;tel&quot;:&quot;02-464-8555&quot;,&quot;distance&quot;:5.788,&quot;is_favorite&quot;:false,&quot;idx&quot;:47,&quot;num&quot;:48}">
			<h3 class="name">
				<small>48</small>
				성수역
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 성동구 아차산로7길 4</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-464-8555</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1233A&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1233A&quot;,&quot;serviceInfo&quot;:&quot;CDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5455681,&quot;pointY&quot;:127.054384,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;성동구&quot;,&quot;address3&quot;:&quot;아차산로7길 4&quot;,&quot;address&quot;:&quot;서울 성동구 아차산로7길 4&quot;,&quot;name&quot;:&quot;성수역&quot;,&quot;tel&quot;:&quot;02-464-8555&quot;,&quot;distance&quot;:5.788,&quot;is_favorite&quot;:false,&quot;idx&quot;:47,&quot;num&quot;:48}">성수역</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1233A" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;1214G&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1214G&quot;,&quot;serviceInfo&quot;:&quot;BCDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5378457,&quot;pointY&quot;:127.072618,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;광진구&quot;,&quot;address3&quot;:&quot;아차산로 262&quot;,&quot;address&quot;:&quot;서울 광진구 아차산로 262&quot;,&quot;name&quot;:&quot;건대스타시티&quot;,&quot;tel&quot;:&quot;02-456-6664&quot;,&quot;distance&quot;:5.942,&quot;is_favorite&quot;:false,&quot;idx&quot;:48,&quot;num&quot;:49}">
			<h3 class="name">
				<small>49</small>
				건대스타시티
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 광진구 아차산로 262</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-456-6664</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;1214G&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;1214G&quot;,&quot;serviceInfo&quot;:&quot;BCDAF&quot;,&quot;storeInfo&quot;:&quot;CE&quot;,&quot;pointX&quot;:37.5378457,&quot;pointY&quot;:127.072618,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;광진구&quot;,&quot;address3&quot;:&quot;아차산로 262&quot;,&quot;address&quot;:&quot;서울 광진구 아차산로 262&quot;,&quot;name&quot;:&quot;건대스타시티&quot;,&quot;tel&quot;:&quot;02-456-6664&quot;,&quot;distance&quot;:5.942,&quot;is_favorite&quot;:false,&quot;idx&quot;:48,&quot;num&quot;:49}">건대스타시티</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="1214G" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>

<li>
	<article>
		<a href="#" data-info="{&quot;seq&quot;:&quot;12C54&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12C54&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.5027863,&quot;pointY&quot;:127.094926,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;송파구&quot;,&quot;address3&quot;:&quot;백제고분로 255&quot;,&quot;address&quot;:&quot;서울 송파구 백제고분로 255&quot;,&quot;name&quot;:&quot;삼전&quot;,&quot;tel&quot;:&quot;02-418-0018&quot;,&quot;distance&quot;:5.953,&quot;is_favorite&quot;:false,&quot;idx&quot;:49,&quot;num&quot;:50}">
			<h3 class="name">
				<small>50</small>
				삼전
			</h3>
			<address class="address">
				<strong class="title sr_only">주소</strong>
				<span>서울 송파구 백제고분로 255</span>
			</address>
			<p class="tel">
				<strong class="title sr_only">연락처</strong>
				<span>02-418-0018</span>
			</p>
			<p class="time">
				<strong class="title sr_only">운영시간</strong>
				<span>
					<span>AM 10~PM 11</span>
				</span>
			</p>
			<p class="service">
				<strong class="title">매장서비스</strong>
			</p>
		</a>

		<h3 class="name_hide">
			<a href="#" data-info="{&quot;seq&quot;:&quot;12C54&quot;,&quot;operationtime&quot;:&quot;AM 10~PM 11&quot;,&quot;storeCode&quot;:&quot;12C54&quot;,&quot;serviceInfo&quot;:&quot;BCDAEF&quot;,&quot;storeInfo&quot;:&quot;C&quot;,&quot;pointX&quot;:37.5027863,&quot;pointY&quot;:127.094926,&quot;address1&quot;:&quot;서울&quot;,&quot;address2&quot;:&quot;송파구&quot;,&quot;address3&quot;:&quot;백제고분로 255&quot;,&quot;address&quot;:&quot;서울 송파구 백제고분로 255&quot;,&quot;name&quot;:&quot;삼전&quot;,&quot;tel&quot;:&quot;02-418-0018&quot;,&quot;distance&quot;:5.953,&quot;is_favorite&quot;:false,&quot;idx&quot;:49,&quot;num&quot;:50}">삼전</a>
			<strong>
				<a href="#none" data-api="favorite" data-seq="12C54" data-fdiv="store" class="favorite">
					favorite
				</a>
			</strong>
		</h3>

	</article>
</li>
</ul>
					</div>
				</div>
			</div>
			
		</div>
	</div>

	<!-- 매장상세정보 -->
	<div id="store_details" class="store_details modal">
		<div class="modal_bg"></div>
		<div class="modal_container">
			<div class="modal_content">
			</div>
		</div>
	</div>

	<!-- 매장 프로모션 -->
		<section class="promotion">
		<h3 class="title">매장 프로모션</h3>
		<div class="event_list" data-api="slide">
			<div class="swipe" style="visibility: visible;">
				<div class="swipe_wrap" style="width: 3664px;">
					<div class="list_product" data-index="0" style="width: 916px; left: 0px; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
						<ul>
														<li>
								<a href="/event/view.php?flag=A&amp;seq=8624">
									<figure><img src="../images/1630631151.jpg" alt=""></figure>
									<span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
									<span class="title">KT 멤버십 고객이라면 누구나 파인트 30% 할인!</span>
								<span class="period">상시진행</span>
								</a>
							</li>
														<li>
								<a href="/event/view.php?flag=A&amp;seq=4922">
									<figure><img src="../images/1639297260.png" alt=""></figure>
									<span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
									<span class="title">제휴 할인 카드 혜택 안내</span>
								<span class="period">상시진행</span>
								</a>
							</li>
														<li>
								<a href="/event/view.php?flag=A&amp;seq=8324">
									<figure><img src="../images/1625114283.png" alt=""></figure>
									<span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
									<span class="title">매월 25일, 50% M포인트 사용</span>
								<span class="period">상시진행</span>
								</a>
							</li>
							
									</ul>
								</div>
								<div class="list_product" data-index="1" style="width: 916px; left: -916px; transition-duration: 0ms; transform: translate(916px, 0px) translateZ(0px);">
									<ul>
																	<li>
								<a href="/event/view.php?flag=A&amp;seq=3302">
									<figure><img src="../images/1578277305.png" alt=""></figure>
									<span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
									<span class="title">1회용 컵 사용 줄이기 안내</span>
								<span class="period">상시진행</span>
								</a>
							</li>
														
						</ul>
					</div>
				</div>
			</div>
			<div class="dslide">
				<!-- paging -->
			<a href="#none" class="active">1<span></span></a><a href="#none">2<span></span></a></div>
		</div>
	</section>


</article>

	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=906a9153ad6e35628650fe87777b93d4"></script>
<script charset="UTF-8" src="http://t1.daumcdn.net/mapjsapi/js/main/4.3.6/kakao.js"></script>
</body>
</html>