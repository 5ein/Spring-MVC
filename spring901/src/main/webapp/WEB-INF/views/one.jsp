<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원검색이 요청됨!!!
<hr color="red">
<!-- 속성으로 지정한 값은 EL로 프린트 -->
${vo.id} <br>
${vo.pw} <br>
${vo.name} <br>
${vo.tel} <br>
</body>
</html>