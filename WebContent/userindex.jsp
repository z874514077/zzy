<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ page language="java" import="java.util.*"%> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
<html>
<head>
	<meta charset="utf-8">
	<title>会员信息</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		body {
		    background:url(pic/userindex.jpg) ;background-size:cover; 
			position: relative;
		}
		ul.nav-pills {
			top: 20px;
			position: fixed;
		}
		div.col-sm-9 div {
			height: 250px;
			font-size: 28px;
		}
		#section1 {color: #fff; background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section2 {color: #fff; background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section41 {color: #fff; background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section42 {color: #fff; background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}

		@media screen and (max-width: 810px) {
			#section1, #section2,  #section41, #section42  {
				margin-left: 400px;
			}
		}
	</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">

<div class="container">
	<div class="row">
		<nav class="col-sm-3" id="myScrollspy">
			<div class="container-fluid"> 
			<div class="container-fluid"> 
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a href="#section1">个人简介</a></li>
				<li><a href="#section2">交友宣言</a></li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">游览经历<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#section41">曾入队伍</a></li>
						<li><a href="#section42">曾游地点</a></li>                     
					</ul>
				</li>
			</ul>
			</div>	
			</div>		
		</nav>
		<div class="col-sm-9">
			<div id="section1">    
				<h1>个人简介</h1>
				<p><%List<String> list0 = (List<String>)session.getAttribute("list0");
			    out.print("<tr>"+"<td align=\"center\">"+list0.get(2)+"</td>"+"</tr>");%></p>
			</div>
			<div id="section2"> 
				<h1>交友宣言</h1>
				<p><%List<String> l1 = (List<String>)session.getAttribute("list0");
			    out.print("<tr>"+"<td align=\"center\">"+l1.get(9)+"</td>"+"</tr>");%></p>
			</div>        
			<div id="section41">         
				<h1>曾入队伍</h1>
				<p><%List<String> l2 = (List<String>)session.getAttribute("list0");
			    out.print("<tr>"+"<td align=\"center\">"+l2.get(10)+"</td>"+"</tr>");%></p>
			</div>      
			<div id="section42">         
				<h1>曾游地点</h1>
				<p><%List<String> l3 = (List<String>)session.getAttribute("list0");
			    out.print("<tr>"+"<td align=\"center\">"+l3.get(5)+"</td>"+"</tr>");%></p>
			</div>
		</div>
	</div>
</div>
<a href=index.jsp><button type="button">返回首页</button></a> 
</body>
</html>