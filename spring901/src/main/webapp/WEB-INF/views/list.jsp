<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 이친구를 해주면 <% %> 이런거 사용 안해도 되고, c:붙여서 사용할수 있대! -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원리스트 요청됨!!!
<hr color="red">
<!-- 속성으로 지정한 값은 EL로 프린트 -->
<c:forEach items="${list}" var="vo">
	${vo.id} <br>
	${vo.pw} <br>
	${vo.name} <br>
	${vo.tel} <br>
</c:forEach>
</body>
</html>