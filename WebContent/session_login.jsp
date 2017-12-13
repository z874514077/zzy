<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
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
  //System.out.println("用户名或密码不能为空！"); 
  response.sendRedirect("usersignin.jsp"); 
  //request.getRequestDispatcher("login.jsp").forward(request, response); 
 } 
 boolean isValid = false; 
 Connection con = null;// 创建一个数据库连接 
 PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement 
 ResultSet result = null;// 创建一个结果集对象 
 try 
 { 
  Class.forName("com.mysql.jdbc.Driver");// 加载Oracle驱动程序 
  //System.out.println("开始尝试连接数据库！"); 
  String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_travelapp?useUnicode=true&characterEncoding=utf-8&useSSL=false";// 127.0.0.1是本机地址，orcl是Oracle的默认数据库名 
  String user = "4o5k0w0j4z";// 用户名,系统默认的账户名 
  String pwd = "mmi44hj2i2ji2hxlyxx5y5m51055zkhm25xm32kk";// 你安装时选设置的密码 
  con = DriverManager.getConnection(url, user, pwd);// 获取连接 
  // System.out.println("连接成功！"); 
  String sql = "select * from user where username=? and password=?";// 预编译语句，“？”代表参数 
  pre = con.prepareStatement(sql);// 实例化预编译语句 
  pre.setString(1, username);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引 
  pre.setString(2, password);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引 
  result = pre.executeQuery();// 执行查询，注意括号中不需要再加参数  
  if (result.next()){ 
   isValid = true; 
  } 
 } 
 catch (Exception e) 
 { 
  e.printStackTrace(); 
 } 
 finally 
 { 
  try 
  { 
   // 逐一将上面的几个对象关闭，因为不关闭的话会影响性能、并且占用资源 
   // 注意关闭的顺序，最后使用的最先关闭 
   if (result != null) 
    result.close(); 
   if (pre != null) 
    pre.close(); 
   if (con != null) 
    con.close(); 
   //System.out.println("数据库连接已关闭！"); 
  } 
  catch (Exception e) 
  { 
   e.printStackTrace(); 
  } 
 } 
 if(isValid){ 
  //System.out.println("登录成功！"); 
  session.setAttribute("username",username); 
  response.sendRedirect("index.jsp");
  //response.sendRedirect("userinformation.jsp"); 
  //request.getRequestDispatcher("index.jsp").forward(request,response); 
 }else{ 
  //System.out.println("登录失败！"); 
  //response.sendRedirect("usersignin.jsp"); 
  request.getRequestDispatcher("usersignin.jsp").forward(request,response); 
 } 
 %> 