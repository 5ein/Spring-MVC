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
	if(session == null){
		
	}else{
		
	}
%>
<hr color="pink">
서버에 세션 속성등록함
<a hreflang="page04.jsp"><button>session속성가지고오기</button></a>
</body>
</html>