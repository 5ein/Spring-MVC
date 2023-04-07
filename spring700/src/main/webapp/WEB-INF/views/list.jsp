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
<button onclick="location.href='tour.jsp'">첫페이지로</button> <br>
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
	<td class="top">NO</td>
	<td class="top">지역</td>
	<td class="top">장소</td>
	<td class="top">후기</td>
	<td class="top">평점</td>
</tr>
<c:forEach items="${list}" var="bag">
<tr>
	<td>${bag.no}</td>
	<td>${bag.area}</td>
	<td>${bag.place}</td>
	<td>${bag.review}</td>
	<td>${bag.grade}</td>
</tr>
</c:forEach>
</table>
</body>
</html>