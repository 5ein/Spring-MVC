<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시판글쓰기 화면입니다. </h3>
<form action="insert2.multi" method="get">
	title : <input name="title" value="화요일"><br>
	content : <input name="content" value="3시에요!"><br>
	writer : <input name="writer" value="kim"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="yellow">

<h3>게시판글수정 화면입니다. </h3>
<form action="update2.multi" method="get">
	no : <input name="no" value="17"><br>
	content : <input name="content" value="배고파요"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="purple">

<h3>게시판글삭제 화면입니다. </h3>
<form action="delete2.multi" method="get">
	no : <input name="no" value="17"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="green">

<h3>게시판글검색 화면입니다. </h3>
<form action="one2.multi" method="get">
	no : <input name="no" value="4"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="blue">

<!-- <button type="button">먹통버튼(아무 기능이 없음)</button> -->
</body>
</html>