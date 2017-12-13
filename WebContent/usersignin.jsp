<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
	<style type="text/css">
	body,html{
	background: url(pic/usersignin.jpg);
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
.login_con{
	width: 465px;
	height: 725px;
	background: rgba(255,255,255,0.4);
	border-radius: 15px 15px 0 0;
	margin-top: 70px;
}
.login_header{
	margin-top: 55px;
}
.login_wor{
	color: #db0011;
	margin-left: 5px;
	line-height: 35px;
}
.login_wors{
	line-height: 35px;
}
.login_name,.login_password,.login_remb{
	height: 45px;
	font-size: 20px;
	line-height: 45px;
	margin-top: 25px;
}
.password span{
	letter-spacing: 20px;
}
.inpt{
	width: 230px;
	height: 45px;
	border: 1px solid #b5b5b5;
	background: #fff;
	overflow: hidden;
	border-radius: 3px;
	margin-left: 15px;
}
.inpt input{
	width: 220px;
	height: 35px;
	border: none;
	outline: none;
	background: none;
	padding: 5px 5px;
	background: #fff;
}
.sign a{
	color: #151518;
}
.login_but button{
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
.three{
	text-align: center;
	line-height: 35px;
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
		<title>登录</title>
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<link rel="stylesheet" href="css/publick.css" />
	</head>
	<body>
<div class="conter_con">
	<div class="login_con Right">
		<!--头部开始-->
		<div class="login_header">
			<div class="content_con">
				<h3 class="login_wor Left">登录</h3>
				<p class="login_wors Right">还没有账号？<a href="userbuild.jsp">点击立即注册》</a></p>
			</div>
		</div>
		<!-- 头部结尾 -->
		<div class="login_bor Both">
			
		</div>
		<!-- 内容开始 -->
		<div class="login_content">
			<div class="content_con">
				<form action="session_login.jsp" method="post">
					<div class="login_name">
						<p class="name Left">
							用户名:
						</p>
						<div class="inpt Left">
							<input type="text" name="username" id="" placeholder="请输入账号" />
						</div>
					</div>
					<div class="login_password">
						<p class="password Left">
							<span>密</span>码:
						</p>
						<div class="inpt Left">
							<input type="password" name="password" id="" placeholder="请输入密码" />
						</div>
					</div>
					<div class="login_remb">
						<p class="remb Left">
							<input type="checkbox" name="" id="" value="" /> &nbsp;记住密码
						</p>
						<p class="sign Right"><a href="sign.html">注册</a></p>
					</div>
					<div class="login_but">
						<button type="submit" value="">立即登录</button>
					</div>
					<p class="wang"><a href=index.jsp>忘记密码</a></p>
					<p class="three">第三方账号登录</p>
				</form>
			</div>
		</div>
		<!-- 内容结束 -->
		<!--底部开始-->
		<div class="login_bor">
			
		</div>
		<div class="three_con">
			<ul class="content_con">
				<li class="three_con_one_li"><a href="javascript:;"><img src="pic/qq.jpg"/></a></li>
				<li><a href="javascript:;"><img src="pic/weixin.jpg"/></a></li>
				<li><a href="javascript:;"><img src="pic/weibo.jpg"/></a></li>
			</ul>
		</div>
		<!--底部结束-->
	</div>
	
</div>
	</body>
</html>
