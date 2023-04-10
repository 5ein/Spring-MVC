<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d610e087d4d302ccdb7d223f816017f"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$('#here').empty()
			$.ajax({
				url : "jsonReponse3",
				data : {
					id : "cookie"
				},
				dataType : "json",
				success : function(x) {
					id = x.id
					pw = x.pw
					name = x.name
					tel = x.tel
					table = "<table><tr><td>id</td><td>pw</td><td>name</td><td>tel</td></tr>" +
								"<tr><td>" + id + "</td><td>" + pw + "</td><td>" + name + "</td><td>" + tel + "</td></tr></table>"
					$('#result').append(table)
				}//success
			})//ajax
		})//b1
		$("#b21").click(function() {
			$('#result').empty()
			$('#here').empty()
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(x) {
					//alert(x.length)
					if (x.length>0) {
						$(x).each(function(i, person) {
							var id = person.id;
							var pw = person.pw;
							var name = person.name;
							var tel = person.tel;
							var result = id + " " + pw + " " + name + " " + tel + "<br>"
							$('#result').append(result);
						})
					}
				}//success
			})//ajax
		})//b21
		$("#b22").click(function() {
			$('#result').empty()
			$('#here').empty()
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(x) {
					header = "<table style='border: 1px solid black;'><tr><td style='border: 1px solid black;'>id</td><td style='border: 1px solid black;'>pw</td><td style='border: 1px solid black;'>name</td><td style='border: 1px solid black;'>tel</td></tr></table>"
					$('#result').append(header);
					$(x).each(function(i, person) {
						var id = person.id;
						var pw = person.pw;
						var name = person.name;
						var tel = person.tel;
						var table = "<table style='border: 1px solid black;'><tr><td style='border: 1px solid black;'>" + id + "</td><td style='border: 1px solid black;'>" + pw + "</td><td style='border: 1px solid black;'>" + name + "</td><td style='border: 1px solid black;'>" + tel + "</td></tr></table>"
						$('#result').append(table);
					})
				}//success
			})//ajax
		})//b22
		$('#b3').click(function() {
			$('#result').empty()
			$('#here').empty()
			$.ajax({
				url: "jsonResponse5",
				dataType: "json",
				success: function(json) {
					lat = json.lat
					lon = json.lon
					
					var mapContainer = document.getElementById('here'),
					mapOption = {
						center : new kakao.maps.LatLng(lat,lon),
						level : 3
					};
					
					var map = new kakao.maps.Map(mapContainer, mapOption);
					
					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(lat, lon); 

					// 지도를 클릭한 위치에 표출할 마커입니다
					var marker = new kakao.maps.Marker({ 
					    // 지도 중심좌표에 마커를 생성합니다 
						position: markerPosition
					}); 
					// 지도에 마커를 표시합니다
					marker.setMap(map);
				}//seccess
			})//ajax
		})//b3
		
		$('#b4').click(function() {
			$('#result').empty()
			$('#here').empty()
			$.ajax({
				url: "",
				success: function(x) {
				    google.charts.load('current', {'packages':['corechart']});
				    google.charts.setOnLoadCallback(drawChart);
				}
			})
		})
		
		function drawChart() {
			$.ajax({
				url: "jsonResponse6",
				dataType: "json",
				success: function(list) {
					var arr2 = new Array(list.length + 1);
				    var header = ["Task", "hours"];
				    arr2[0] = header
				    
					for(i = 0; i < list.length; i++){
				    	one = new Array(2)
				    	one[0] = list[i].work;
				    	one[1] = list[i].time;
				    	arr2[i + 1] = one
					}
			        var data = google.visualization.arrayToDataTable(arr2);
			        
			        var options = {
			          title: 'My Daily Activities'
			        };
			
			        var chart = new google.visualization.PieChart(document.getElementById('here'));
			
			        chart.draw(data, options);
				}//success
			})//ajax
		}//draw chart
	})//$
</script>
</head>
<body>
	<button id="b1">Member한명 검색</button>
	<button id="b21">Member 리스트</button>
	<button id="b22">Member 리스트 테이블 형태</button>
	<button id="b3">카카오맵 위도경도</button>
	<button id="b4">구글차트</button>
	<hr>
	<div id="result"></div>
	<div id="here" style="width: 100%; height: 350px;"></div>
</body>
</html>