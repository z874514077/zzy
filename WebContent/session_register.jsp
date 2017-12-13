<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@ page import="java.sql.*" %> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
 <% 
 String username = request.getParameter("username"); 
 String password = request.getParameter("password"); 
 if(username==null||"".equals(username.trim())||password==null||"".equals(password.trim())){ 
  //out.write("用户名或密码不能为空！"); 
  System.out.println("用户名或密码不能为空！"); 
  response.sendRedirect("index.jsp"); 
  //request.getRequestDispatcher("login.jsp").forward(request, response); 
 } 
 else{ 
  System.out.println("完善个人信息！"); 
  response.sendRedirect("userinformation.jsp"); 
 } 
 %> 
 <% session.setAttribute("username",username); 
    session.setAttribute("password",password); %>