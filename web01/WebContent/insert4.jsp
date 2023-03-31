<%@page import="multi.MovieDAO"%>
<%@page import="multi.MovieVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 액션코드! -->
    <jsp:useBean id="bag" class="multi.MovieVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    
    <%
    /* //0. 클라이언트가 입력한 정보를 받아주세요! --액션코드 첫번쨰 줄로 대체
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String location = request.getParameter("location");
    String director = request.getParameter("director"); */
    
    /* //1. 받은 데이터를 dao에게 주기 위해서 가방을 만들어서 넣자! --액션코드 두번째 줄로 대체
    MovieVO bag = new MovieVO();
    bag.setId(id);
    bag.setTitle(title);
    bag.setContent(content);
    bag.setLocation(location);
    bag.setDirector(director); */
    
    //2. dao에게 가방을 전달하면서 insert해달라고 하자!
    MovieDAO dao = new MovieDAO();
    dao.insert(bag);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 정보 등록</title>
<style type="text/css">
body {
	background: #fac4ff;
}
#b1 {
	color: black;
}
</style>
</head>
<body>
<a href="movie.html">
	<button id="b1">영화정보 페이지로</button>
</a><br>
영화 정보 추가.
<hr color="white">
<%-- 추가한 title: <%=title %> <br>
추가한 content: <%=content %> <br>
추가한 writer: <%=director %> <br> --%>
추가한 title: <%=bag.getTitle() %> <br>
추가한 content: <%=bag.getContent() %> <br>
추가한 writer: <%=bag.getDirector() %> <br>
</body>
</html>