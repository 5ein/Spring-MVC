<%@page import="multi.PlayerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String backnumber = request.getParameter("backnumber");
    	
    	PlayerDAO dao = new PlayerDAO();
    	dao.delete(backnumber);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수정보 삭제 성공</title>
<style type="text/css">
button {
	background: #fac4ff;
	color: black;
}
</style>
</head>
<body>
<a href="delete5.html">
	<button>이전 페이지로</button>
</a><br>
삭제된 선수 등번호 : <%= backnumber %>
</body>
</html>