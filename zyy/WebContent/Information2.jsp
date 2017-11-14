<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<style type="text/css">
	body{
		background-image:url(pic/information.jpg);
		background-size:100% 100%;
		}
	</style>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		    <a href=Buildteam.jsp><button type="button" class="btn btn-lg btn-block btn-info">创建队伍</button></a>
			<div class="panel-group" id="panel-775337">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-775337" href="#panel-element-779869"><s:property value="username"/>详细信息</a>
					</div>
					<div id="panel-element-779869" class="panel-collapse in">
						<div class="panel-body">
							<table border="1" align="center">
							<tr>
							    <td>队伍名</td>
							    <td>目的地</td>
							    <td>出发日期</td>
							    <td>所需天数</td>
							    <td>所需人数</td>
							    <td>已有人数</td>
							    <td>队伍描述</td>
							</tr>
							
							   <%List<String> list = (List<String>)session.getAttribute("list");
							    for (int i = 0; i < list.size(); i+=7) {
							  out.print("<tr>"+"<td align=\"center\">"+list.get(i)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+1)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+2)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+3)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+4)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+5)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+6)+"</td>"+"</tr>");
							    }%>
							</table>
					<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-775337" href="#panel-element-779869"><s:property value="username"/>为您推荐的队友</a>
					</div>
					<div id="panel-element-779869" class="panel-collapse in">
						<div class="panel-body">
							<table border="1" align="center">
							<tr>
							    <td>姓名</td>
							    <td>性别</td>
							    <td>年龄</td>
							    <td>出发地</td>
							    <td>目的地</td>
							    <td>出发日期</td>
							    <td>曾经去过的地方</td>
							</tr>    
							<tr>
							   <%List<String> list1 = (List<String>)session.getAttribute("list1");
							    for (int i = 0; i < list1.size(); i+=7) {
							  out.print("<tr>"+"<td align=\"center\">"+list1.get(i)+"</td>");
							  out.print("<td align=\"center\">"+list1.get(i+1)+"</td>");
							  out.print("<td align=\"center\">"+list1.get(i+2)+"</td>");
							  out.print("<td align=\"center\">"+list1.get(i+3)+"</td>");
							  out.print("<td align=\"center\">"+list1.get(i+4)+"</td>");
							  out.print("<td align=\"center\">"+list1.get(i+5)+"</td>");
							  out.print("<td align=\"center\">"+list1.get(i+6)+"</td>"+"</tr>");
							    }%>
							</tr>
							</table>
						</div>
					</div>
				</div>
					
						</div>
					</div>
				</div>     
			</div>
		</div>
	</div>
</div>
<a href=Index.jsp><button type="button" class="btn btn-default active">返回首页</button></a>
</body>
</html>