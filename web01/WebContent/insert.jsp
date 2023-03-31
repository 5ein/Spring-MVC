<%@page import="multi.MemberDAO3"%>
<%@page import="multi.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <!-- 얘는 건들이면 jsp인지 tomcat이 모르게 됨.  -->
    <!-- 브라우저가 보낸 데이터를 받아야함. ==> 자바로 짜야함. -->
    <!-- 브라우저가 보낸 데이터를 받을 떄 사용하는 부품 필요함. -->
    <%
    	//자바코드 넣는 부분!!
        //HttpServletRequest request = new HttpServletRequest();
        //tomcat은 미리 reqeust를 만들어서 내장시켜놨어요! (위에꺼 안해주고 바로 request 사용!)
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
        dao.insert(bag);
    %>
    <!-- 3. 브라우저에게 결과를 알려주기위한 html코드가 미리 들어가 있음 -->
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
회원가입 요청되었음. <br>
가입한 id : <%= id %> <br> <!-- %= 변수값이 출력된다  -->
가입한 pw : <%= pw %> <br>
가입한 name : <%= name %> <br>
가입한 tel : <%= tel %> <br>
</body>
</html>