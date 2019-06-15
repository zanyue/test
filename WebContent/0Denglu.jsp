<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登陆注册页面</title>
</head>
<body>
    <form action="DengluServlet" method="post" style="padding-top:-700px;">
        用户名:<input type="text" name="name" value=""><br><br>
        密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="pwd" value=""><br><br>
        <input type="submit" value="登陆" name="denglu"><input type="reset" value="重置"><br>
        </form>
        <form action="zhuce.jsp">
            <input type="submit" value="新用户注册">
        </form>
</body>
</html>