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
	Cookie[] cookies = request.getCookies();
	for(Cookie c: cookies){
		out.print(c.getName() + " : " + c.getValue() + "<br>");
	}
%>
<hr color="pink">
JSESSIONID는 제외하고 프린트하기 >> <br>
<%
	for(Cookie c: cookies){
		if(c.getName().equals("categories")|| c.getName().equals("exercise")){
			out.print(c.getName() + " : " + c.getValue() + "<br>");
		}
	}
%>

</body>
</html>