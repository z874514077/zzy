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
			body{background:url(pic/routesearch.jpg) no-repeat;background-size:100%,100%; }
			.dahan{height:50px; background:rgba(0,0,0,0.2); /*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.5;}
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
		<title>推荐路线查询</title>
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
				<h1 > <font color = "#FFFFF">Don't Fear The Unknown</font></h1>
				<form action="SearchRoute">
				<div class="Checkbox">
					<div class="Inpt_text">
						<input type="text" name="forplace" id="" value="" placeholder="我想去....."/>
					</div>
					<div class="Button">
					    <input type="image" src="pic/route5.jpg" class="pic"/> 
					</div>
				</div>
				</form>
				<div class="checkbox_ul">
					<ul>
						<li class="First_li"><a href=Harbin.jsp><font color = "#FFFFF">哈尔滨</font></a></li>
						<li><a href=Lijiang.jsp><font color = "#FFFFF">丽江</font></a></li>
						<li><a href=Dalian.jsp><font color = "#FFFFF">大连</font></a></li>
						<li><a href=Zhangjiajie.jsp><font color = "#FFFFF">张家界</font></a></li>
			
					</ul>
				</div>
			</div>
			<div class="Right_Div">
				<h1><font color = "#FFFFF">冰天雪地，祖国冰城</font></h1>
				<p><font color = "#FFFFF">&nbsp;&nbsp;&nbsp;&nbsp;冬季，要么就去南方的南方，躲避严寒，寻求温暖，要么就去北方的北方，</font></p>
				<p><font color = "#FFFFF">体验极致的寒冷！特殊的历史进程和地理位置造就了哈尔滨这座具有异国</font></p>
				<p><font color = "#FFFFF">情调的美丽都市，它素有“东方莫斯科”的美称。也许有90%的人是为了</font></p>
				<p><font color = "#FFFFF">哈尔滨冬天动人心魄的冰雪而来，兆麟公园冰灯游园会、冰雪大世界、</font></p>
				<p><font color = "#FFFFF">太阳岛雪雕……当整座城市都笼罩在冰雪中时，在流光溢彩的衬托中，</font></p>
				<p><font color = "#FFFFF">用冰清玉洁来形容它一点也为过。但哈尔滨的美不仅仅在冰雪，到索菲亚</font></p>
				<p><font color = "#FFFFF">大教堂看白鸽飞舞，去中央大街寻一家有些情调的俄式西餐厅静享美食，</font></p>
				<p><font color = "#FFFFF">在盛夏的啤酒节狂欢，或者只是到老道外扫街看看巴洛克风格小洋楼也足</font></p>
				<p><font color = "#FFFFF">以让人心生快慰。最后，一定要去松花江上看一眼，无论是夏天映照在湖面</font></p>
				<p><font color = "#FFFFF">熠熠生辉的夕阳还是冬天划着冰，游着泳的人们，美丽的松花江蜿蜒穿过，涤荡</font></p>
				<p><font color = "#FFFFF">着这座百年冰城，洗尽铅华，夜幕下的哈尔滨仿佛吟诗般讲述着她如梦似幻的前世今生。</font></p>
				
				
			</div>
		</div>
	</body>
</html>