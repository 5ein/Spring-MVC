<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//스크릿트릿
	JSONObject json = new JSONObject();
	json.put("name", "hong"); //{name : hong}
	json.put("age", 24); 
	json.put("id", "hhong");
	
	JSONObject json2 = new JSONObject();
	json2.put("name", "apple"); //{name : hong}
	json2.put("age", 25); 
	json2.put("id", "peach");
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	
	//out.print(json.toJSONString()); //얘랑 밑에 애랑 같음
	
%><%= array.toJSONString()%>