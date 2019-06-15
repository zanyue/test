<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"//"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册页面</title>
</head>
<body>
    <form action="ZhuceServlet" method="post" style="padding-top:-700px;">
        输入用户姓名：<input type="text" name="name"><br><br>
        输&nbsp;&nbsp;入&nbsp;&nbsp;密&nbsp;&nbsp;码：
        <input type="password" name="pwd"><br><br>
  选&nbsp;&nbsp;择&nbsp;&nbsp;性&nbsp;&nbsp;别：  
        <input type="radio" name="sex" value="男">男
        <input type="radio" name="sex" value="女">女<br><br>
选&nbsp;&nbsp;择&nbsp;&nbsp;家&nbsp;&nbsp;乡：
        <select name="home">
		<option value="shanghai">上海</option>
		<option value="beijing">北京</option>
		<option value="newyork">纽约</option>
		</select><br><br>
填写个人信息：<br><br>
		<textarea name="info" rows="5" cols="30"></textarea><br>
		<input type="reset" value="重置"><input type="submit" value="注册">
    </form>


</body>
</html>