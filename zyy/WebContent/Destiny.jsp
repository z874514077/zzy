<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<style type="text/css">
	body{
		background-image:url(pic/destiny.jpg);
		background-size:100% 100%;
		}
	</style>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>目的地</title>	
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					Find a happy team 
				</h1>
			</div>
			<form class="form-horizontal" role="form" action="SearchTeam">
				<div class="form-group">
					 <label for="place" class="col-sm-2 control-label">目的地</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="place" name="place" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">队伍查询</button>
					</div>
				</div>
			</form>
			<a href=Index.jsp><button type="button" class="btn btn-default active">返回首页</button></a>
		</div>
	</div>
</div> 
</body>
</html>