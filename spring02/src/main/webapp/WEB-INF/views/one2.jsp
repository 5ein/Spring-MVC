<%@page import="com.multi.mvc02.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			//1. 화면을 이동하지 않고, 서버에 insert 해달라고 요청! => url
			//2. 성공하면, result아래에 append하기
			content = $('#reply').val()
			writer = "apple"  //세션이 잡혀있었다면? ${id}
			$.ajax({
				url : "insert4",
				data : {
					bbsno : ${bag.no},
					content : content,
					writer : writer
				},
				success : function() {
					alert('성공')
					$('#result').append("ㄴ" + writer + ": " + content + "<br>")
					$('#reply').val('') //성공하면 글자 없애주기
					//val() : 입력한 값을 가지고 온다.
					//val('~~') : ~~값을 input의 value에 넣는다
				}
			}) //ajax
		}) //b1
	}) //$
</script>
<style>
body {
	background: #ffd6ff;
}
</style>
</head>
<body>
<a href="bbs.jsp"><button>처음페이지로</button></a>
<a href="list2"><button>게시물 전체 목록페이지</button></a>
<hr color="red">

게시물검색 처리 요청이 완료되었습니다.
<br>
${bag.no}, ${bag.title}, ${bag.content}, ${bag.writer}
<hr color="red">
댓글달기: <input id="reply"> <button id="b1">댓글달기</button><br>
<hr color="blue">
<div id="result">
<!-- for-each를 이용해 댓글 목록을 프린트!! -->
	<c:forEach items="${list}" var="bag"> 
	<%-- - ${bag.no}, ${bag.bbsno}, ${bag.content}, ${bag.writer} <br> --%>
	ㄴ${bag.writer}: ${bag.content} <br>
	</c:forEach>
</div>
</body>
</html>
