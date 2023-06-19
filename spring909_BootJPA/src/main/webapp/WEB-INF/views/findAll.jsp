<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body bgcolor="orange">
member readAll success!!!<br>
<hr color='red'>
<c:forEach items="${list}" var="vo">
${vo} <br>
</c:forEach>
</body>
</html>