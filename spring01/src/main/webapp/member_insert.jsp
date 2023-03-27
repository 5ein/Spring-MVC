<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	회원가입 화면입니다.
	<hr color="red">
	<form action="insert.jsp" method="get">
		아이디 : <input id="id" value="apple"> <br> 패스워드 : <input
			id="pw" value="1234"> <br> 이름 : <input id="name"
			value="hwang"> <br> 전화번호 : <input id="tel" value="010">
		<br>
		<button type="submit">회원가입</button>
		//form안에 있는 버튼은 submit !!
	</form>
	<button type="button">먹통버튼(아무 기능이 없음)</button> //form밖!
</body>
</html>