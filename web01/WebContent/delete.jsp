<%@page import="multi.MemberDAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	
      	//dao에게 가방을 전달하자.!
        MemberDAO3 dao = new MemberDAO3();
        dao.delete(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: #fac4ff;
}
button {
	background: white;
}
</style>
</head>
<body>
<a href="member.html">
	<button id="b1">회원정보 페이지로</button>
</a>
<hr color="white">
회원탈퇴 요청되었음.<br>
탈퇴한 id : <%= id %>
</body>
</html>