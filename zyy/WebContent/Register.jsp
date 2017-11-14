<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<style type="text/css">
	body{
		background-image:url(pic/register.jpg);
		background-size:100% 100%;
		}
	</style>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>会员注册</title>	
</head>
<body>
   <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		    <h3 class="text-center text-info">
				欢迎来到用户注册界面
			</h3>
				<form class="form-horizontal" role="form" action="Adduser">
				<div class="form-group">
					 <label for="name" class="col-sm-2 control-label">姓名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="name" />
					</div>
				</div>
				<div class="form-group">
					 <label for="sex" class="col-sm-2 control-label">性别</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="sex" />
					</div>
				</div>
				<div class="form-group">
					 <label for="age" class="col-sm-2 control-label">年龄</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="age" />
					</div>
				</div>
				<div class="form-group">
					 <label for="start" class="col-sm-2 control-label">所在地</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="start" />
					</div>
				</div>
				<div class="form-group">
					 <label for="end" class="col-sm-2 control-label">目的地</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="end" />
					</div>
				</div>
				<div class="form-group">
					 <label for="date" class="col-sm-2 control-label">期待日期</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="date" />
					</div>
				</div>
				<div class="form-group">
					 <label for="places" class="col-sm-2 control-label">曾经去过的地方</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="places" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">提交会员信息</button>
					</div>
				</div>
			</form>
			<a href=Index.jsp><button type="button" class="btn btn-default active">返回首页</button></a>
		</div>
	</div>
</div>
</body>
</html>