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
			<div class="panel-group" id="panel-775337">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-775337" href="#panel-element-779869"><s:property value="username"/>详细信息</a>
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
							<tr>
							    <%List<String> list0 = (List<String>)session.getAttribute("list0");
							    for (int i = 0; i < list0.size(); i++) {
							  out.print("<td align=\"center\">"+list0.get(i)+"</td>");
							} %>
							</tr>
							</table>
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