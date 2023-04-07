<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1{
	text-align: center;
}
table {
	background: #fed6ff;
	text-align: center;
	margin: auto;
}
td{
	width: 300px
}
button {
	background: white;
}
</style>
</head>
<body>
<h1>BOOK 관리 시스템</h1>
<table border="1">
	<tr>
		<td><b>전체 도서리스트</b></td>
		<td><a href="list3"><button>전체 도서리스트</button></a></td>
	</tr>
	<tr>
		<td><b>등록</b></td>
		<td>
			<form action="insert3" method="get">
			<table>
				<tr>
					<td>제목</td>
					<td><input name="name" value="오늘은 금요일"></td>
				</tr>
				<tr>
					<td>url</td>
					<td><input name="url" value="1234"></td>
				</tr>
				<tr>
					<td>이미지</td>
					<td><input name="img" value="011.jpg"></td>
				</tr>
				<tr>
					<td><button type="submit">등록</button></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
	<tr>
		<td><b>수정</b></td>
		<td>
			<form action="update3" method="get">
			<table>
				<tr>
					<td>ID </td>
					<td><input name="id" value="6"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input name="name" value="가자"></td>
				</tr>
				<tr>
					<td><button type="submit">수정</button></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
	<tr>
		<td><b>삭제</b></td>
		<td>
			<form action="delete3" method="get">
			<table>
				<tr>
					<td>ID </td>
					<td><input name="id" value="6"></td>
				</tr>
				<tr>
					<td><button type="submit">삭제</button></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
	<tr>
		<td><b>검색</b></td>
		<td>
			<form action="one3" method="get">
			<table>
				<tr>
					<td>ID </td>
					<td><input name="id" value="1"></td>
				</tr>
				<tr>
					<td><button type="submit">검색</button></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
</table>
</body>
</html>