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
<a href="tour.jsp"><button>첫페이지로</button></a>
<h1>검색 결과</h1>
<!-- 표현식(expression) -->
<!-- model의 속성으로 전달받은 bag은 EL로 출력한다 -->
<!-- EL: 속성으로 지정한 값 꺼내서 출력해주세요!.라는 의미! -->
<table border="1">
	<tr>
		<th>NO</th>
		<td>${bag.no}</td>
	</tr>
	<tr>
		<th>지역</th>
		<td>${bag.area}</td>
	</tr>
	<tr>
		<th>장소</th>
		<td>${bag.place}</td>
	</tr>
	<tr>
		<th>후기</th>
		<td>${bag.review}</td>
	</tr>
	<tr>
		<th>평점</th>
		<td>${bag.grade}</td>
	</tr>
</table>
</body>
</html>