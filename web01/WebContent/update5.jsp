<%@page import="multi.PlayerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="bag" class="multi.PlayerVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    
    <%
	PlayerDAO dao = new PlayerDAO();
	dao.update(bag);
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수정보 수정 성공</title>
<style type="text/css">
button {
	background: #fac4ff;
	color: black;
}
</style>
</head>
<body>
<a href="update5.html">
	<button>이전 페이지로</button>
</a><br>
선수 정보 등록됨.
<hr color="black">
수정한 선수 등번호: <%=bag.getBacknumber() %> <br>
수정한 선수 이름: <%=bag.getName() %> <br>
수정한 선수 키: <%=bag.getHeight() %> <br>
수정한 선수 몸무게: <%=bag.getWeight() %> <br>
수정한 선수 소속팀: <%=bag.getTeam() %> <br>
</body>
</html>