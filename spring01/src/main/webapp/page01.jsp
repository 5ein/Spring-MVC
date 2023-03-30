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
	Cookie exercise1 = new Cookie("categories", "exercise");
	Cookie exercise2 = new Cookie("exercise", "soccer");
	
	response.addCookie(exercise1);
	response.addCookie(exercise2);
%>
<a href="page02.jsp"><button>쿠키리스트 가지고오기</button></a>

</body>
</html>