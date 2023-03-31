<%@page import="multi.ProductDAO"%>
<%@page import="multi.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<jsp:useBean id="bag" class="multi.ProductVO"></jsp:useBean>
	<jsp:setProperty property="*" name="bag"/>
	
	<%
		/* //1. 전달되는 값을 받으세요. --위에 jsp:useBean으로 대체 가능!!
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String price = request.getParameter("price");
		String company = request.getParameter("company");
		String img = request.getParameter("img"); */
		
		/*
		//2. dao에 데이터를 주기 위해서 가방을 만들어서 값들을 넣으세요. --위에 jsp:setProperty로 대체가능 
		ProductVO bag = new ProductVO();
		bag.setId(id);
		bag.setName(name);
		bag.setContent(content);
		bag.setPrice(Integer.parseInt(price));
		bag.setCompany(company);
		bag.setImg(img); */
		
		//3. dao에 가방을 주면서 insert해달라고 요청해주세요.
		ProductDAO dao = new ProductDAO();
		dao.insert(bag);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: #fac4ff;
}
</style>
</head>
<body>
<a href="product.html">
	<button id="b1">첫페이지로</button>
</a><br> 
<hr color="white">
상품등록되었습니다.
<%-- <img src="img/<%=img%>" width=200 height=200> --%>
<img src="img/<%= bag.getImg() %>"   width=200  height=200>
</body>
</html>