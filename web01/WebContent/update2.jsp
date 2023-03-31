<%@page import="multi.BbsDAO"%>
<%@page import="multi.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String no = request.getParameter("no");
	String content = request.getParameter("content");
    
	BbsVO bag = new BbsVO();
	bag.setNo(Integer.parseInt(no));
	bag.setContent(content);
	
	BbsDAO dao = new BbsDAO();
	dao.update(bag);
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: #fac4ff;
}
#b1 { /* #은 아이디 선택!, 특정한 것 한 개만 선택! */
	color: red;
}
</style>
</head>
<body>
<a href="bbs.html">
	<button id="b1">게시판정보 페이지로</button>
</a><br>
게시글 수정 요청되었음.
<hr color="blue">
수정한 no : <%= no %> <br>
수정한 content : <%= content %> <br>
</body>
</html>