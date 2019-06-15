package com.servlet;

import java.io.IOException;
//import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

public class Searchall extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("user");//System.out.println("user");
		UserDao ud = new UserDaoImpl();
		List<User> userall = ud.getUserAll();
		request.setAttribute("userAll", userall);
		request.getRequestDispatcher("/showall.jsp?name="+user).forward(request,response);
		
	}

}
