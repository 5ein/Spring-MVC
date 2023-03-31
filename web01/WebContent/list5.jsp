<%@page import="multi.PlayerVO"%>
<%@page import="multi.PlayerDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	PlayerDAO dao = new PlayerDAO();

	// 5, 6) dao가 리턴한 PlayerVO가 들어간 ArrayList를 받는다.
	ArrayList<PlayerVO> list = dao.list();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 검색</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
table{
	text-align: center;
}
button {
	background: #fac4ff;
	color: black;
}
a{
	text-decoration: none;
	color: white; 
}
</style>
</head>
<body>
<h3>선수 리스트 페이지</h3>
<hr color="black">
<a href="player.html">
<button>player 페이지로</button>
</a>
<table class="table">
<tr class="table-info">
	<td>backnumber</td>
	<td>name</td>
	<td>team</td>
</tr>
<%
	for (PlayerVO bag2 : list) {
%>
<tr class="table-primary">
	<td><%= bag2.getBacknumber()%></td>
	<td>
		<a href="one5.jsp?backnumber=<%= bag2.getBacknumber()%>">
			<%= bag2.getName() %>
		</a>
	</td>
	<td><%= bag2.getTeam()%></td>
</tr>
<% } %>
</table>
</body>
</html>