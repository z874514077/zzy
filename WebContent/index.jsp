<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String username = request.getParameter("username"); %>
<html>
<head>
<style type="text/css">
.dahan{height:50px; background:rgba(0,0,0,0.2); }
.Big_checkbox{width: 500px;height:500px;margin: 0px 0px 0px 0px;background:rgba(0,0,0,0.2);float: left; }
</style>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>驴友辅助系统首页</title>	
</head>
<body>
<div class="dahan">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-static-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">功能</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href=index.jsp>首页</a>
						</li>
						<li>
							 <a href=usersearch.jsp>会员查询</a>
						</li>
						<li>
							 <a href=teamsearch.jsp?username=${username}>组队查询</a>
						</li>
						<li>
							 <a href=routesearch.jsp>推荐路线查询</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">登陆|注册<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href=usersignin.jsp>登陆</a>
								</li>
								<li>
									 <a href=userbuild.jsp>注册</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
			</div>
			</div>
			</div>	
			<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-871523">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-871523">
					</li>
					<li data-slide-to="1" data-target="#carousel-871523">
					</li>
					<li data-slide-to="2" data-target="#carousel-871523">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="pic/index100.jpg" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="pic/index101.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="pic/index102.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-871523" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-871523" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>