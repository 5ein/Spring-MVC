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
				url: "json1", //.jsp가 붙지 않으면 controller
				dataType : "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel //json에서 tel키로 값을 추출
					$('#result').append(id + " " + pw + " " + name + " " + tel + "<br>")
				} //success
			}) //ajax
		})//b1
		$('#b11').click(function() {
			$.ajax({
				url: "json1",
				dataType : "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel //json에서 tel키로 값을 추출
					table = "<table><tr><td>항목명</td><td>값</td></tr>" + 
					"<tr><td>아이디</td><td>" + id +"</td></tr>" + 
					"<tr><td>패스워드</td><td>" + pw +"</td></tr>" + 
					"<tr><td>이름</td><td>" + name +"</td></tr>" + 
					"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>"
					$('#result').append(table)
				} //success
			}) //ajax
		})//b11
		$('#b111').click(function() {
			$.ajax({
				url: "json1",
				dataType : "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel //json에서 tel키로 값을 추출
					list = "<ul><li>항목명 : 값</li> <li>아이디 : " + id + "</li> <li>패스워드 : " + pw +"</li> <li>이름 : " + name + "</li> <li>전화번호 : " + tel + "</li></ul>"
					$('#result').append(list)
				} //success
			}) //ajax
		})//b111
		$('#b2').click(function() {
			$.ajax({
				url: "json2",
				dataType : "json",
				success: function(json) {//[{}, {id: "", name: "", pw : "", tel: ""}]
					id1 = json[1].id
					name1 = json[1].name
					$('#result').append("json배열 중 2번째 것>> " + name1 + " " + id1 + "<br>")
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
	<button id="b1">컨트롤러에서 JSON(텍스트)을 받아오자.!</button>
	<button id="b2">컨트롤러에서 JSONArray를 받아오자.!</button>
	<hr>
	<button id="b3">컨트롤러에서 JSON3을 받아오자.!</button>
	<!-- url: json3, bbs vo에 값을 하나 넣어서 json으로 받아와서 출력 -->

	<button id="b4">컨트롤러에서 JSONArray4를 받아오자.!</button>
	<!-- url: json4, bbs vo에 2개가 들어간 arraylist를 만들어서 json array으로 받아와서 출력 -->
	<hr>
	<button id="b11">컨트롤러에서 JSON(다른 모양, table li)을 받아오자</button>
	<button id="b111">컨트롤러에서 JSON(다른 모양, table li)2을 받아오자</button>
	<hr color="red">
	<div id="result"></div>
</body>
</html>