<%@page import="com.multi.mvc01.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>오늘의 뉴스</h1>
<h3> 속보입니다! 속안보이게 조심하세요! </h3>
<img src="resources/img/comedy.jpg" width="400" height="300"><br>
<hr color="black">
<% 
	if(session.getAttribute("id") != null) { //로그인이 성공해서 ram에 id를 저장해놓은 것.
%>
		<form action="aaa">
			댓글: <input name="reply"> <button>댓글달기</button>
		</form>
<%} %>
</body>
</html>