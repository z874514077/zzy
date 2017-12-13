<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta charset="UTF-8">
		<style type="text/css">
		
			*{margin: 0;padding: 0;}
			body{background:url(pic/teamsearch.jpg)no-repeat; background-size:100%,100%; }
			.dahan{ background:rgba(0,0,0,0.2); /*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
			.Big_checkbox{clear: both;}
			.Left_div{width: 400px;height:150px;margin: 100px 0px 0px 50px;background:rgba(0,0,0,0.2);float: left;/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6; }
			.Checkbox{height: 30px;}
			.Inpt_text{float: left;}
			.Inpt_text input{width: 250px;height: 30px;background: #fff;font-size: 16px;outline: none;}
			.Button{float: left;margin-left: 50px;}
			.Button a{display: block;}
			.Button button{width: 0px;height: 0px;background: #01A590;color: #fff;font-size: 32px;border: none;outline: none;}
			.Button img{width: 30px;height: 30px;}
			.checkbox_ul{clear: both;}
			.checkbox_ul ul{margin: 20px 0;}
			.checkbox_ul ul li{float: left;margin-left: 10px;list-style: none;text-decoration: none;}
			.checkbox_ul ul li.First_li{margin: 0;}
			.checkbox_ul ul li a{display: block;color: #000000;text-decoration:none;}
			.Right_Div{float: left;margin: 0 0 0 100px;}
			
		</style>
		<title>组队查询</title>
	</head>
	<body>
      
      <div class="dahan">
	<div class="row clearfix"  >
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-static-top" role="navigation" >
			   
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
							 <a href=teamsearch.jsp>组队查询</a>
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
      
		<div class="Big_checkbox">
			<div class="Left_div">
				<h1 > <font color = "#FFFFF">Find a happy team</font></h1>
				<form action="SearchTeam">
				<div class="Checkbox">
					<div class="Inpt_text">
						<input type="text" name="end" id="" value="" placeholder="我想去....."/>
					</div>
					<div class="Button">
						<input type="image" src="pic/route5.jpg" class="pic"/> 
					</div>
				</div>
				</form>
			</div>
			<div class="Right_Div">
							<h1><font color = "#FFFFF">花海星空，香格里拉</font></h1>
				<p><font color = "#FFFFF">&nbsp;&nbsp;&nbsp;&nbsp;香格里拉素有“高山大花园”、“动植物王国”、“有色金属王国”的美称。从大理沿滇藏公路北行315公里，可达迪</font></p>
				<p><font color = "#FFFFF">庆藏族自治州首府香格里拉县城中心镇。香格里拉地处青藏高原东南边缘、横断山脉南段北端，“三江并流”之</font></p>
				<p><font color = "#FFFFF">腹地，形成独特的融雪山、峡谷、草原、高山湖泊、原始森林和民族风情为一体的景观。</font></p>
				<p><font color = "#FFFFF">迪庆全州国土面积23870平方公里，北与西藏昌都地区相连，东与四川甘孜藏族和凉山彝族毗邻，南和西与</font></p>
				<p><font color = "#FFFFF">云南丽江和怒江傈僳族相接。香格里拉景区内雪峰连绵，云南省最高峰卡瓦格博峰巍峨壮丽。中甸县境内，</font></p>
				<p><font color = "#FFFFF">海拔4000米以上的雪山达470座，峡谷纵横深切，最著名的有金沙江虎跳峡、澜沧江峡谷等大峡谷，还有辽</font></p>
				<p><font color = "#FFFFF">阔的高山草原牧场、莽莽的原始森林以及星罗棋布的高山湖泊。</p>
				
				
			</div>
		</div>
	</body>
</html>