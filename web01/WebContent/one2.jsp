<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");

BbsDAO dao = new BbsDAO();
BbsVO bag2 = dao.one(Integer.parseInt(no));
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
body {
	background: #fac4ff;
}
</style>
</head>
<body>
	<a href="bbs.html">
		<button>게시판정보 페이지로</button>
	</a>
	<br> 당신이 검색을 원하는 번호는 :
	<%=no%>
	<hr color="white">
	<table class="table">
		<tr class="table-light">
			<td>검색한 제목:</td>
			<td><%=bag2.getTitle()%></td>
		</tr>
		<tr class="table-info">
			<td>검색한 내용:</td>
			<td><%=bag2.getContent()%></td>
		</tr>
		<tr class="table-dark">
			<td>검색한글쓴이:</td>
			<td><%=bag2.getWriter()%></td>
		</tr>
	</table>
</body>
</html>