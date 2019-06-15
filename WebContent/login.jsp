<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*,java.sql.*" %>

<%

String usrname = request.getParameter("usr");
String usrpwd = request.getParameter("pwd");
String req = request.getParameter("req");
String cap = request.getParameter("captcha");
//out.println(req);
if(!session.getAttribute("code").equals(cap)){
	out.println("<script>alert('验证码错误。');history.go(-1);</script>");
}else if(req.equals("login")){
	    String driver = "com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3316/test";
	    try{	    	
	        Class.forName(driver);
		    Connection conn = DriverManager.getConnection(url,"root","");
		    Statement stmt = conn.createStatement();
		    String sql = "select * from test_usr where usrName='"+usrname+"'";
		    ResultSet rs = stmt.executeQuery(sql);
		    String name = null;
		    String mima = null;
		    if(rs.next()){
		        name = rs.getString("usrName");
		        mima = rs.getString("usrPwd");
		        if(mima.equals(usrpwd)){
		            response.sendRedirect("http://localhost:8080/test/WebRoot/Index.jsp?name="+name);
		        }else{
		            out.println("<script>alert('密码错误。');history.go(-1);</script>");
		        }
		    }else{
		        out.println("<script>alert('用户名不存在。');history.go(-1);</script>");
		    }
		    rs.close();
		    conn.close();
	    }catch(ClassNotFoundException e){
	        System.out.println("sorry,can't find the driver.");
	        e.printStackTrace();
	    }catch(SQLException e){
	        e.printStackTrace();
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	}else if(req.equals("register")){
	response.sendRedirect("http://localhost:8080/test/WebRoot/Add.html");
}

%>
