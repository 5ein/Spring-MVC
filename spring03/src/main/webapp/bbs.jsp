<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>게시물등록 화면입니다. </h3>
<hr color="red">
<form action="insert2" method="get">
	<!-- no : <input name="no" value="11"><br> -->
	title : <input name="title" value="오늘은~"><br>
	content : <input name="content" value="화요일~"><br>
	writer : <input name="writer" value="${id}"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="black">
<h3>게시물수정 화면입니다. </h3>
<hr color="red">
<form action="update2" method="get">
	no : <input name="no" value="11"><br>
	content : <input name="content" value="오늘은~"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="black">
<h3>게시물삭제 화면입니다. </h3>
<hr color="red">
<form action="delete2" method="get">
	no : <input name="no" value="11"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="black">
<h3>게시물검색 화면입니다. </h3>
<a href="list2">모든 게시판 리스트 가지고 오기</a>
<hr color="red">
<a href="one2?no=30">30번 검색</a>
<form action="one2" method="get">
no : <input name="no" value="30"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="black">
</body>
</html>