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
<h1>공동구매</h1>

<h3>이번 공동구매 물품은 립스틱 입니다.</h3>
<img src="resources/img/lipstick.jpg" width="400" height="300"><br>
<%
//세션에서 값을 꺼내는 방법
	String id = (String)session.getAttribute("id");
	if(id != null) { //로그인성공
%>
		<a href="bbb"><button>공동구매 참여</button></a>
<%} else { %> <!-- 로그인 안함. -->
		<a href="login.jsp"><button>로그인페이지로</button></a>
<% } %>
</body>
</html>