<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"//"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>My JSP 'success.jsp starting page</title>
</head>
<body>
    ${xiaoxi}<br>
    <a href="Searchall">查看所有用户</a>
</body>
</html>