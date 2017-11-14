<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>驴友辅助系统首页</title>	
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-static-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">功能</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href=Index.jsp>首页</a>
						</li>
						<li>
							 <a href=Search.jsp>会员查询</a>
						</li>
						<li>
							 <a href=Destiny.jsp>组队查询</a>
						</li>
						<li>
							 <a href=Route.jsp>推荐路线查询</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">登陆|注册<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href=Signin.jsp>登陆</a>
								</li>
								<li>
									 <a href=Register.jsp>注册</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="jumbotron">
				<h1>
					欢迎来到驴友辅助系统
				</h1>
				<p>
					本系统致力于服务自助出行的驴友并为他们提供会员查询，条件组队，自动推荐队友，推荐规划路线等功能。
				</p>
			</div>
			<div class="carousel slide" id="carousel-107263">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-107263">
					</li>
					<li data-slide-to="1" data-target="#carousel-107263" class="active">
					</li>
					<li data-slide-to="2" data-target="#carousel-107263">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="pic/index1.jpg" />
						<div class="carousel-caption">
							<h4>
								旅游最当季--张家界
							</h4>
							<p>
								雄伟险峻的自然奇观
							</p>
						</div>
					</div>
					<div class="item active">
						<img alt="" src="pic/index2.jpg" />
						<div class="carousel-caption">
							<h4>
								旅游最当季--丽江古城
							</h4>
							<p>
								风情万种的云南沃土
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="pic/index3.jpg" />
						<div class="carousel-caption">
							<h4>
								旅游最当季--富士山
							</h4>
							<p>
								清新宜人的文艺旅行
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-107263" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-107263" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>   
</body>
</html>