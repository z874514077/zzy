<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<style type="text/css">
	body{
		background-image:url(pic/singin.jpg);
		background-size:100% 100%;
		}
	</style>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>会员登录</title>	
</head>
<body>
   <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		    <h3 class="text-center text-info">
				欢迎来到用户登录界面
			</h3>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					 <label for="username" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="username" />
					</div>
				</div>
				<div class="form-group">
					 <label for="userpassword" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="userpassword" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">登陆</button>
					</div>
				</div>
			</form>
			<a href=Index.jsp><button type="button" class="btn btn-default active">返回首页</button></a>
		</div>
	</div>
</div>
</body>
</html>