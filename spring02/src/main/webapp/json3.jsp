<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//스크릿트릿
	JSONObject json = new JSONObject();
	json.put("today", "rain"); //{name : hong}
	json.put("temp", "13.8°"); 
	json.put("hu", " 99%");
	
	//out.print(json.toJSONString()); //얘랑 밑에 애랑 같음
	
%><%= json.toJSONString()%>