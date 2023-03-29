<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: blue;
	color: white;
}
</style>
</head>
<body>
<h3>검색 성공!</h3>
검색한 id >> ${bag.id} <br>
검색한 name >> ${bag.name} <br>
검색한 url >> ${bag.url} <br>
검색한 img >> ${bag.img} <br>
<img src="resources/img/${bag.img}" width="300" height="100">
<br>
</body>
</html>