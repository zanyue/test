<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ page import="org.json.JSONObject,org.json.JSONArray"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取 Cookie</title>
</head>
<body>
<%!
 String str = "i";
%>

<%
//response.setHeader("Content-Type", "application/json;charset=UTF-8");
try{
	JSONArray ajson = new JSONArray();
	JSONObject ojson = new JSONObject();
	ojson.put("p1","block");
	ojson.put("p2","none");
	ajson.put(ojson);
	str = ajson.toString();
	//System.out.print(str);
	//out.print(str);
	response.sendRedirect("login.jsp?r="+str);
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>