<%@page import="multi.PlayerDAO"%>
<%@page import="multi.PlayerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 액션코드! -->
    <jsp:useBean id="bag" class="multi.PlayerVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    
    <%
    //dao에게 가방을 전달하면서 insert해달라고 하자!
    PlayerDAO dao = new PlayerDAO();
    dao.insert(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수정보 등록 성공</title>
<style type="text/css">
button {
	background: #fac4ff;
	color: black;
}
</style>
</head>
<body>
<a href="insert5.html">
	<button>이전 페이지로</button>
</a><br>
선수 정보 등록됨.
<hr color="black">
등록한 선수 등번호: <%=bag.getBacknumber() %> <br>
등록한 선수 이름: <%=bag.getName() %> <br>
등록한 선수 키: <%=bag.getHeight() %> <br>
등록한 선수 몸무게: <%=bag.getWeight() %> <br>
등록한 선수 소속팀: <%=bag.getTeam() %> <br>
</body>
</html>