<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#button').click(function() {
			$.ajax({
				url : "movie",
				data : {
					title : $('#title').val(),
					price : $('#price').val()
				},
				success : function(x) {
					alert("movie 요청성공!")
					alert(x)
					$('#result').append(x + "<br>")
				},
				error : function() {
					alert('movie 요청실패!')
				}
			})//ajax
		})//button
		$('#b1').click(function() {
			$.ajax({
				url : "fruit",
				success : function(x) {
					alert("fruit 요청성공!")
					alert(x)
					$('#result').append(x + "<br>")
				},
				error : function() {
					alert('fruit 요청실패!')
				}
			})//ajax
		})//button
		$('#b2').click(function() {
			$.ajax({
				url : "tour",
				success : function(x) {
					alert("tour 요청성공!")
					alert(x)
					$('#result').append(x + "<br>")
				},
				error : function() {
					alert('tour 요청실패!')
				}
			})//ajax
		})//button
	})//$
</script>
</head>
<body>
	영화 제목 : <input id="title"> <br>
	영화 관람료 : <input id="price"> <br>
	<input id="button" type="button" value="영화 관람 확인"><br>
	<button id="b1">과일목록 가지고 오기</button><br>
	<button id="b2">여행목록 가지고 오기</button><br>
	<hr color="red">
	<div id="result"></div>
</body>
</html>