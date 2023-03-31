<%@page import="multi.PlayerVO"%>
<%@page import="multi.PlayerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String backnumber = request.getParameter("backnumber");

	PlayerDAO dao = new PlayerDAO();
	PlayerVO bag2 = dao.one(backnumber);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수 정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
button {
	background: #fac4ff;
	color: black;
}
</style>
</head>
<body>
	<br> 당신이 검색을 원하는 선수 등번호는 : <%=backnumber%>
	<hr color="black">
	<a href="list5.jsp">
	<button>이전 페이지로</button>
	</a>
	<table class="table">
		<tr class="table-active">
			<td>선수</td>
			<td><img src="img/player<%=bag2.getBacknumber()%>.png" width="150" height="150"></td>
		</tr>
		<tr class="table-info">
			<td>선수 등번호</td>
			<td><%=bag2.getBacknumber()%></td>
		</tr>
		<tr class="table-danger">
			<td>선수이름</td>
			<td><%=bag2.getName()%></td>
		</tr>
		<tr class="table-warning">
			<td>키</td>
			<td><%=bag2.getHeight()%></td>
		</tr>
		<tr class="table-primary">
			<td>몸무게</td>
			<td><%=bag2.getWeight()%></td>
		</tr>
		<tr class="table-success">
			<td>소속 팀</td>
			<td><%=bag2.getTeam()%></td>
		</tr>
	</table>
</body>
</html>