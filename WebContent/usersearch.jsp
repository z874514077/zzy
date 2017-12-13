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
			body{background:url(pic/usersearch.jpg)no-repeat;background-size:100%,100%; }
			.dahan{ height:50px; background:rgba(0,0,0,0.2); /*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.5;}
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
		<title>会员查询</title>
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
				<h1 > <font color = "#FFFFF">Find new tour pals</font></h1>
				<form action="SearchUser">
				<div class="Checkbox">
					<div class="Inpt_text">
						<input type="text" name="name" id="" value="" placeholder="我想找....."/>
					</div>
					<div class="Button">
					    <input type="image" src="pic/route5.jpg" class="pic"/> 
					</div>
				</div>
				</form>
			</div>
			<div class="Right_Div">
				<h1><font color = "#FFFFF">古佛大漠，飞天敦煌</font></h1>
				<p><font color = "#FFFFF">&nbsp;&nbsp;&nbsp;&nbsp;提起敦煌，很多人脑海中会浮现出漫天的黄沙、莫高窟里的“飞天”与古佛、浓浓的西域风情、苍凉的戈壁等印</font></p>
				<p><font color = "#FFFFF">象。虽然敦煌的光芒已渐渐湮没在历史中，但这里曾经的辉煌依然可见。</font></p>
				<p><font color = "#FFFFF">尘封在历史中的莫高窟，被称为“沙漠中的美术馆”和“艺术与信仰的精神绿洲”，是绝大多数旅行者造访敦煌的</font></p>
				<p><font color = "#FFFFF">最大理由。莫高窟是世界上现存规模最大、内容最丰富的佛教艺术地，因为这里蕴藏着深厚的历史、辉煌的</font></p>
				<p><font color = "#FFFFF">文化、极高的艺术成就、虔诚的信仰，被誉为“一生必来一次”的地方。</font></p>
				<p><font color = "#FFFFF">除此之外，鸣沙山环抱中的绿洲月牙泉、西部荒凉的沙漠戈壁、西千佛洞中沉默的神佛、奇异的雅丹“魔鬼</font></p>
				<p><font color = "#FFFFF">城”、存在于诗词歌赋中的玉门关和阳关、敦煌城中的瓜果与美酒、秋天时金黄色的胡杨林……这一切，都描</font></p>
				<p><font color = "#FFFFF">摹出了敦煌的传奇姿态。这座曾经风情万种的苍茫大漠，至今仍流光溢彩。</font></p>
			</div>
		</div>
	</body>
</html>