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
//세션의 값으로는 아무 타입이나 다 넣어도 됨.
//==> 주차장 생각! Car면 다 됨!!
//==> Car(큰) <-- 트럭, 승용차, 버스, ...(작)
//==> 타입변환(형변환), 자동형변환(작->큰 업캐스팅!!)
%>
서버에 세션 속성등록함.
<hr color="pink">
<a href="page04.jsp"><button>session속성가지고오기</button></a>
</body>
</html>