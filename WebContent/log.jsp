<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*,java.net.*" %>

<%

String usrname = request.getParameter("usr");
String usrpwd = request.getParameter("pwd");
String req = request.getParameter("req");
String cap = request.getParameter("code");


if(req.equals("register")){
	response.sendRedirect("http://localhost:8080/test/zhuce.jsp");
}
if(req.equals("login")){
	if(usrpwd != ""&&usrpwd != null){
		if(usrname != ""&&usrname != null){
			String driver = "com.mysql.jdbc.Driver";
		    String url = "jdbc:mysql://localhost:3306/test";
		    try{	    	
		        Class.forName(driver);
			    Connection conn = DriverManager.getConnection(url,"root","123456");
			    Statement stmt = conn.createStatement();
			    String sql = "select * from user where name='"+usrname+"'";
			    ResultSet rs = stmt.executeQuery(sql);
			    String name = null;
			    String mima = null;
			    
			   
				    if(rs.next()){
				        //name = rs.getString("name");
				        mima = rs.getString("pwd");
				        if(mima.equals(usrpwd)){
				            response.sendRedirect("Searchall");
				            session.setAttribute("user",usrname);
				        }else
				            out.println("<script>alert('密码错误。');history.go(-1);</script>");				        
				    }else
			  
			    out.println("<script>alert('用户名不存在。');history.go(-1);</script>");
			    
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
		}else
			out.println("<script>alert('请输入用户名。');history.go(-1);</script>");			
	}else
		out.println("<script>alert('请输入密码。');history.go(-1);</script>");
}


			
	 
			
	


//out.println(req);


%>