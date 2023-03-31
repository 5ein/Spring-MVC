<%@page import="multi.MemberVO"%>
<%@page import="multi.MemberDAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id"); 
        	
        	MemberDAO3 dao = new MemberDAO3();
        	MemberVO bag2 = dao.one(id);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 검색</title>
<style type="text/css">
body {
	background: #fac4ff;
}
#b1 {
	background: white;
	color: black;
}
</style>
</head>
<body>
<a href="member.html">
	<button id="b1">회원정보 페이지로</button>
</a><br>
<hr color="white">
당신이 검색을 원하는 번호는 : <%= id %>
검색한 이름: <%= bag2.getName() %> <br>
검색한 패스워드: <%= bag2.getPw() %> <br>
검색한 전화번호: <%= bag2.getTel() %> <br>
</body>
</html>