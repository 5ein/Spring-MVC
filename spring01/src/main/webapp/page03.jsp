<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("view", 100);
%>
서버에 세션 속성등록함.
<hr color="pink">
<a href="page04.jsp"><button>session속성가지고오기</button></a>
</body>
</html>