<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: auto;
	background: #fed6ff;
}
td{
	width: 100px;
	text-align: center;
}
.top{
	background: #fbff0f;
	color: black;
	height: 40px;
}
button {
	background: white;
}
</style>
</head>
<body>
<!--  표현식(expression) --> 
<button onclick="location.href='book.jsp'">첫페이지로</button> <br>
<!-- <a href="book.jsp"><button>첫페이지로</button></a> -->

<h1 align="center">도서목록 리스트</h1>
<!-- bag.getId()  -->
<%--model의 속성으로 전달받은 bag은 EL로 출력한다. --%>
<!-- EL: 속성으로 지정한 값 꺼내서 출력해주세요.!라는 의미! -->
<!-- 	for (String s : list) {
		}
 -->
<table border="1">
<tr>
	<td class="top">id</td>
	<td class="top">name</td>
	<td class="top">url</td>
	<td class="top">img</td>
</tr>
<c:forEach items="${list}" var="bag">
<tr>
	<td>${bag.id}</td>
	<td><a href="BookOne?id=${bag.id}">${bag.name}</a></td>
	<td><a href="${bag.url}">${bag.url}</a></td>
	<td>
		<img src="resources/img/${bag.img}" width="300" height="100">
	</td>
</tr>
</c:forEach>
</table>
</body>
</html>