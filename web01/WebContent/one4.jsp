<%@page import="multi.MovieVO"%>
<%@page import="multi.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	MovieDAO dao = new MovieDAO();
	MovieVO bag2 = dao.one(id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 검색</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body {
	background: #fac4ff;
}
</style>
</head>
<body>
	<br> 당신이 검색을 원하는 id는 : <%=id%>
	<hr color="white">
	<table class="table">
		<tr class="table-warning">
			<td>영화 아이디</td>
			<td><%=bag2.getId()%></td>
		</tr>
		<tr class="table-info">
			<td>영화 제목</td>
			<td><%=bag2.getTitle()%></td>
		</tr>
		<tr class="table-danger">
			<td>영화 내용</td>
			<td><%=bag2.getContent()%></td>
		</tr>
		<tr class="table-success">
			<td>영화 상영관</td>
			<td><%=bag2.getLocation()%></td>
		</tr>
		<tr class="table-primary">
			<td>감독</td>
			<td><%=bag2.getDirector()%></td>
		</tr>
	</table>
</body>
</html>