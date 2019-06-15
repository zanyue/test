<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String name=request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <base href="<%=basePath %>">
<title>欢迎登陆，<%= name%></title>
<link rel="stylesheet" href="D:/software/xampp/tomcat/webapps/ROOT/test/WebContent/css/bootstrap.min.css">  
<script src="D:/software/xampp/tomcat/webapps/ROOT/test/WebContent/js/jquery-3.2.1.min.js"></script>
<script src="D:/software/xampp/tomcat/webapps/ROOT/test/WebContent/jsbootstrap.min.js"></script></head>
<body>
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-md-offset-10"><h2>欢迎登陆，<%=name %>！</h2></div>
      </div>
      
        
    <table style="witdh:1000,cellpadding:10,border:6">
    <tr>
      <th colspan="7" style="margin:auto">学生信息</th>
    </tr>
    	<tr>
    		<th>ID</th>
    		<th>姓名</th>
    		<th>性别</th>
    		<th>密码</th>
    		<th>家乡</th>
    		<th>备注</th>
    		<th>操作</th>
    	</tr>
<c:forEach var="U" items="${userAll}"  > 
       <form action="UpdateServlet" method="post"> 
       <tr>
	       <td><input type="text" value="${U.id}" name="id" ></td>
	       <td><input type="text" value="${U.name}" name="name"></td>
	       <td><input type="text" value="${U.sex}" name="sex"></td>
	       <td><input type="text" value="${U.pwd}" name="pwd"></td>
	       <td><input type="text" value="${U.home}" name="home"></td>
	       <td><input type="text" value="${U.info}" name="info"></td>
	       <td><a href="DeleteServlet?id=${U.id}">删除</a>  <input type="submit" value="更新"></td>
	   </tr>
     </form>
    </c:forEach>


    </table>
    </div>
</body>
</html>