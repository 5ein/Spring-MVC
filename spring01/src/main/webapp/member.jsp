<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입 화면입니다. </h3>
<form action="insert" method="get">
	id : <input name="id" value="cookie"><br>
	pw : <input name="pw" value="1234"><br>
	name : <input name="name" value="park"><br>
	tel : <input name="tel" value="011"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="yellow">

<h3>회원수정 화면입니다. </h3>
<form action="update" method="get">
	id : <input name="id" value="cookie"><br>
	tel : <input name="tel" value="012"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="purple">

<h3>회원탈퇴 화면입니다. </h3>
<form action="delete" method="get">
	id : <input name="id" value="cookie"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="green">

<h3>회원검색 화면입니다. </h3>
<form action="one" method="get">
	id : <input name="id" value="cookie"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="blue">


<!-- <button type="button">먹통버튼(아무 기능이 없음)</button> -->
</body>
</html>