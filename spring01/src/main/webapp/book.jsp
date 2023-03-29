<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>등록</h3>
<form action="BookInsert" method="get">
	name : <input name="name" value="안녕"><br>
	url: <input name="url" value="1234"><br>
	img : <input name="img" value="011"><br>
	<button type="submit">등록</button>
</form>
<hr color="pink">

<h3>수정</h3>
<form action="BookUpdate" method="get">
	id : <input name="id" value="6"><br>
	name : <input name="name" value="가자"><br>
	<button type="submit">수정</button>
</form>
<hr color="green">

<h3>삭제</h3>
<form action="BookDelete" method="get">
	id : <input name="id" value="6"><br>
	<button type="submit">삭제</button>
</form>
<hr color="red">

<h3>검색</h3>
<form action="BookOne" method="get">
	id : <input name="id" value="1"><br>
	<button type="submit">검색</button>
</form>
<hr color="blue">
</body>
</html>