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
<h1>관광지 관리 시스템</h1>
<table border="1">
	<tr>
		<td><b>관광지 리스트</b></td>
		<td><a href="list"><button>전체 관광지 리스트</button></a></td>
	</tr>
	<tr>
		<td><b>등록</b></td>
		<td>
			<form action="insert" method="get">
			<table>
				<tr>
					<td>지역</td>
					<td><input name="area" value="부산"></td>
				</tr>
				<tr>
					<td>장소</td>
					<td><input name="place" value="서면"></td>
				</tr>
				<tr>
					<td>후기</td>
					<td><input name="review" value="사진이 잘나와요"></td>
				</tr>
				<tr>
					<td>평점</td>
					<td><input name="grade" value="3"></td>
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
			<form action="update" method="get">
			<table>
				<tr>
					<td>NO</td>
					<td><input name="no" value="5"></td>
				</tr>
				<tr>
					<td>후기</td>
					<td><input name="review" value="나쁘지 않아요."></td>
				</tr>
				<tr>
					<td>평점</td>
					<td><input name="grade" value="2"></td>
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
			<form action="delete" method="get">
			<table>
				<tr>
					<td>NO</td>
					<td><input name="no" value="6"></td>
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
			<form action="one" method="get">
			<table>
				<tr>
					<td>NO</td>
					<td><input name="no" value="5"></td>
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