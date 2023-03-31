<%@page import="multi.MemberDAO3"%>
<%@page import="multi.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//자바코드 넣는 부분!!
        String id = request.getParameter("id"); //받아와서 저장해주기, 받는거는 항상 String
        String pw = request.getParameter("pw"); //"1234"
        String name = request.getParameter("name"); //"apple"
        String tel = request.getParameter("tel"); //"010"
        
      	//가방을 만들어서 값들을 넣고(set)!
        //jsp에서 자동import 단축키 => 해당클래스 클릭한다음 + 컨트롤 + 쉬프트 + m
        MemberVO bag = new MemberVO();
        bag.setId(id);
        bag.setPw(pw);
        bag.setName(name);
        bag.setTel(tel);
        
        //dao에게 가방을 전달하자.!
        MemberDAO3 dao = new MemberDAO3();
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
button {
	background: white;
}
</style>
</head>
<body>
<a href="member.html">
	<button id="b1">회원정보 페이지로</button>
</a>
<hr color="white">
회원수정 요청되었음. <br>
수정한 id : <%= id %> <br> <!-- %= 변수값이 출력된다  -->
수정한 pw : <%= pw %> <br>
수정한 name : <%= name %> <br>
수정한 tel : <%= tel %> <br>
</body>
</html>