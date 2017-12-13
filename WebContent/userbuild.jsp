<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html>
	<head>
	<style type="text/css">
	body,html{
	background: url(pic/userbuild.jpg);
	width: 100%;;
	height: 100%;
	background-size:cover;
	background-position: center center;
	overflow: hidden;
}

*{padding: 0;margin: 0;text-decoration: none;list-style: none;font-family: "微软雅黑";}
.conter_con{width: 1200px;margin: 0 auto;}
.My_conter_con{width: 1200px;margin: 0 auto;}
.Left{float: left;}
.Right{float: right;}
.Both{clear: both;}
.imgg_Left img{float: left;margin-right: 10px;}
.Border_none{border: none;}
.Margin_none{margin: 0;}
.Out{border: 1px solid #FF0000;}

.content_con{
	width: 320px;
	margin: 0 auto;
}
.sign_con{
	width: 465px;
	height: 725px;
	background: rgba(255,255,255,0.4);
	border-radius: 15px 15px 0 0;
	margin-top: 70px;
}
/*头部开始*/
.sign_header{
	margin-top: 55px;
}
.sign_wor{
	color: #db0011;
	margin-left: 5px;
	line-height: 35px;
}
.sign_wors{
	line-height: 35px;
}
/*头部结束*/
/*内容开始*/
/*用户名*/
.sign_name,.sign_yanz,.sign_password{
	background: #fff;
	border: 1px solid #b5b5b5;
	height: 45px;
	font-size: 20px;
	line-height: 45px;
	margin-top: 25px;
}
.name,.yanz,.password{
	margin: 7px 5px;
}
.inpt{
	width: 270px;
	height: 45px;
	overflow: hidden;
	border-radius: 3px;
	margin-left: 10px;
}
.inpt input{
	width: 270px;
	height: 35px;
	border: none;
	outline: none;
	background: none;
	padding: 5px 5px;
}
/*验证码*/
.inpt_yz{
	width: 160px;
	height: 45px;
	overflow: hidden;
	border-radius: 3px;
	margin-left: 10px;
}
.inpt_yz input{
	width: 160px;
	height: 45px;
	overflow: hidden;
	border: none;
	outline: none;
	border-radius: 3px;
	margin-left: 10px;
}
.inpt_but{
	width: 108px;
	height: 45px;
	background: #db0011;
	border: none;
	outline: none;
	color: #fff;
	padding-top: -3px;
}
/*密码*/
.password span{
	letter-spacing: 20px;
}
.wrid{
	font-size: 12px;
	margin-top: 20px;
}
/*注册按钮*/
.sign_remb{
	font-size: 14px;
	height: 50px;
	line-height: 25px;
}
.sign_remb input{
	margin-right: 5px;	
}
.sign a{
	color: #151518;
}
.sign_but button{
	width: 100%;
	height: 50px;
	font-size: 20px;
	background: #db0011;
	color: #fff;
	border: none;
	outline: none;
	border-radius: 5px;
	margin-top: 35px;
}
.wang{
	text-align: right;
	line-height: 40px;
}
/*内容结束*/
.three{
	text-align: center;
	line-height: 35px;
	margin-top:  25px;
}
.three_con{
	width: 280px;
	/*margin-top: 20px;*/
	margin:  20px auto;
}
.three_con li{
	float: left;
	margin-left: 40px;
}
.three_con li.three_con_one_li{
	margin: 0;
}
	
	</style>
		<meta charset="UTF-8">
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="css/sign.css"/>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="stylesheet" href="css/publick.css" />
	</head>
	<body>
<div class="conter_con">
	<div class="sign_con Right">
		<!--头部开始-->
		<div class="sign_header">
			<div class="content_con">
				<p class="sign_biao">
					<h3 class="sign_wor Left">注册</h3>
				</p>
				<p class="sign_wors Right">已有账号？<a href="usersignin.jsp">立即登录》</a></p>
			</div>
		</div>
		<!-- 头部结尾 -->
		<div class="sign_bor Both">
			
		</div>
		<!-- 内容开始 -->
		<div class="sign_content">
			<div class="content_con">
				<form action="session_register.jsp" method="post">
					<!-- 用户名 -->
					<div class="sign_name">
						<p class="name Left">
							
						</p>
						<div class="inpt Left">
							<input type="text" name="username" id="" placeholder="请输入您的手机号" />
						</div>
					</div>
					<!--密码-->
					<div class="sign_password">
						<p class="password Left">
							
						</p>
						<div class="inpt Left">
							<input type="text" name="password" id="" placeholder="请输入密码" />
						</div>
					</div>
					<p class="wrid Both">
						<input type="checkbox" name="" id="" value="" />
						阅读并同意驴驴网的《驴驴网服务协议》  《法律声明 及隐私政策》  
					</p>
					<div class="sign_but">
						<button type="submit" value="">立即注册</button>
					</div>
					<p class="three">第三方账号登录</p>
				</form>
			</div>
		</div>
		<!-- 内容结束 -->
		<div class="sign_bor">
		</div>
		<div class="three_con">
			<ul class="content_con">
				<li class="three_con_one_li"><a href="javascript:;"><img src="pic/qq.jpg"/></a></li>
				<li><a href="javascript:;"><img src="pic/weixin.jpg"/></a></li>
				<li><a href="javascript:;"><img src="pic/weibo.jpg"/></a></li>
			</ul>
		</div>
		
	</div>
</div>
	</body>
</html>
