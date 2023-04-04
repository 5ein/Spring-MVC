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
			$('#result').empty() //기존의 result에 있는것 삭제됨.
			$.ajax({
				url : "list5",
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b1
		$('#b2').click(function() {
			$('#result').empty() //기존의 result에 있는것 삭제됨.
			$.ajax({
				url : "list6",
				data : {
					bbsno : 10
				},
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b2
		$('#b3').click(function() {
			$('#result').empty() //기존의 result에 있는것 삭제됨.
			$.ajax({
				url : "list6",
				data : {
					bbsno : 23
				},
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url : "one5",
				data : {
					id : "apple"  /* 값으로 인식하기 위해 "" 필수! 그냥 쓰면 변수중에서 찾게됨. */
				},
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b4
		$('#b5').click(function() {
			$('#result').empty()
			$.ajax({
				url : "one6",
				data : {
					no : 1
				},
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b5
		$('#b6').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list7",
				success : function(x) {
					$('#result').append(x)
				}//success
			})//ajax
		})//b6
	})//$
</script>
</head>
<body>
	<button id="b1">bbs리스트 가지고 오기</button>
	<button id="b2">bbs번호 10번 reply리스트 가지고 오기</button> <br>
	<button id="b3">bbs번호 23번 reply리스트 가지고 오기</button> <!-- list6, bbsno: 23 -->
	<button id="b4">member id가 apple인 사람의 정보 가지고 오기</button> <br>
					<!-- one5, id: apple, views/one5.jsp -->
	<button id="b5">bbs no가 1인 게시물의 상세 정보 가지고 오기</button>
					<!-- one6, no: 1, views/one6.jsp -->
	<button id="b6">member의 모든 리스트 가지고 오기</button>
					<!-- list7, views/list7.jsp -->
	<hr color="red">
	<div id="result" style="background: #ffd6ff;"></div>
</body>
</html>