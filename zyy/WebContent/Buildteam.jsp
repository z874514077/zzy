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
<title>建立队伍</title>	
</head>
<body>
   <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		    <h3 class="text-center text-info">
				欢迎来到建立队伍界面
			</h3>
				<form class="form-horizontal" role="form" action="Addteam">
				<div class="form-group">
					 <label for="teamname" class="col-sm-2 control-label">队伍名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="teamname" />
					</div>
				</div>
				<div class="form-group">
					 <label for="place" class="col-sm-2 control-label">目的地</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="place" />
					</div>
				</div>
				<div class="form-group">
					 <label for="teamdate" class="col-sm-2 control-label">出发日期</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="teamdate" />
					</div>
				</div>
				<div class="form-group">
					 <label for="day" class="col-sm-2 control-label">旅行时间</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="day" />
					</div>
				</div>
				<div class="form-group">
					 <label for="neednum" class="col-sm-2 control-label">所需人数</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="neednum" />
					</div>
				</div>
				<div class="form-group">
					 <label for="ownnum" class="col-sm-2 control-label">已有人数</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="ownnum" />
					</div>
				</div>
				<div class="form-group">
					 <label for="description" class="col-sm-2 control-label">描述</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"name="description" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">提交队伍信息</button>
					</div>
				</div>
			</form>
			<a href=Index.jsp><button type="button" class="btn btn-default active">返回首页</button></a>
		</div>
	</div>
</div>
</body>
</html>