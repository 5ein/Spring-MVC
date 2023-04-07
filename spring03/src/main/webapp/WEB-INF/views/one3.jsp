<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	background: white;
}
table {
	background: #fed6ff;
	text-align: center;
}
</style>
</head>
<body>
<a href="book.jsp"><button>첫페이지로</button></a>
<h1>검색 결과</h1>
<!-- 표현식(expression) -->
<!-- model의 속성으로 전달받은 bag은 EL로 출력한다 -->
<!-- EL: 속성으로 지정한 값 꺼내서 출력해주세요!.라는 의미! -->
<table border="1">
	<tr>
		<th>id</th>
		<td>${bag.id}</td>
	</tr>
	<tr>
		<th>name</th>
		<td>${bag.name}</td>
	</tr>
	<tr>
		<th>url</th>
		<td><a href="${bag.url}">${bag.url}</a></td>
	</tr>
	<tr>
		<th>img</th>
		<td><img src="resources/img/${bag.img}" width="300" height="100"></td>
	</tr>
</table>
<%-- 검색한 id >> ${bag.id} <br>
검색한 name >> ${bag.name} <br>
검색한 url >> ${bag.url} <br>
검색한 img >> ${bag.img} <br>
<img src="resources/img/${bag.img}" width="300" height="100">
<br> --%>
</body>
</html>