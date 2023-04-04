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
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list9",
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b1
		$("#b2").click(function() {
			$('#result').empty()
			$.ajax({
				url : "one9",
				data : {
					name : "food9"
				},
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b2
	})//$
</script>
</head>
<body>
	<button id="b1">product 리스트 가져오기</button>
	<button id="b2">product name검색 가져오기</button>
	<hr>
	<div id="result" style="background: #ffd6ff;"></div>
</body>
</html>