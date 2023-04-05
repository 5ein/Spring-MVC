<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- content delivery network  : CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "one22", //.jsp가 붙지 않으면 controller
				data: {
					no : 5
				},
				dataType : "json",
				success: function(json) {
					no = json.no
					title = json.title
					$('#result').append(no + " " + title + "<br>")
				} //success
			}) //ajax
		})//b1
		$('#b11').click(function() {
			$.ajax({
				url: "one22",
				data: {
					no : 5
				},
				dataType : "json",
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer //json에서 tel키로 값을 추출
					table = "<table><tr><th>no</th><th>title</th><th>content</th><th>writer</th></tr>" + 
					"<tr><td>" + no +"</td><td>" + title + "</td><td>" + content + "</td><td>" + writer + "</td></tr></table>"
					$('#result').append(table)
				} //success
			}) //ajax
		})//b11
		$('#b2').click(function() {
			$.ajax({
				url: "list55",
				dataType : "json",
				success: function(json) {//[{}, {id: "", name: "", pw : "", tel: ""}]
					no1 = json[1].no
					title1 = json[1].title
					content1 = json[1].content
					$('#result').append(no1 + " " + title1 + " " + content1 + "<br>")
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$.ajax({
				url: "json3",
				dataType : "json",
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer
					$('#result').append(no + " " + title + " " + content + " " + writer + "<br>")
				} //success
			}) //ajax
		})//b3
		$('#b4').click(function() {
			$.ajax({
				url: "json4",
				dataType : "json",
				success: function(json) {
					no = json[0].no
					title = json[0].title
					content = json[0].content
					writer = json[0].writer
					
					no1 = json[1].no
					title1 = json[1].title
					content1 = json[1].content
					writer1 = json[1].writer
					
					table = "<table><tr><th>no</th><th>title</th><th>content</th><th>writer</th></tr><tr><td>"
					+ no + "</td><td>" + title + "</td><td>" + content + "</td><td>" + writer + "</td></tr><tr><td>" 
					+ no1 + "</td><td>" + title1 + "</td><td>" + content1 + "</td><td>" + writer1 + "</td></tr></table>"
					$('#result').append(table)
					//$('#result').append("json배열 중 1번째 것>> " + no + " " + title + " " + content + " " + writer + "<br>")
					//$('#result').append("json배열 중 2번째 것>> " + no1 + " " + title1 + " " + content1 + " " + writer1 + "<br>")
				} //success
			}) //ajax
		})//b4
	})//$
</script>
</head>
<body>
	<button id="b1">컨트롤러에서 bbs JSON(text)을 받아오기</button>
	<button id="b11">컨트롤러에서 bbs JSON(table)을 받아오기</button>
	<button id="b2">컨트롤러에서 bbs JSONArray를 받아오기</button>
	<hr color="red">
	<div id="result"></div>
</body>
</html>