<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
*{margin: 0;padding: 0;}
body{background:url(pic/teambuild.jpg) no-repeat;background-size:100%,100%; }
.Big_checkbox{clear: both;}
.Left_div{width: 400px;height:350px;margin:50px 0px 0px 400px;float: left; background: rgba(255,255,255,0.4);}
.Inpt_text1{margin: 10PX 0 0 80PX ;}
.Inpt_text2{margin: 10PX 0 0 80PX ;}
.Inpt_text3{margin: 10px 0 0 80PX;}
.Inpt_text4{margin: 10px 0 0 80PX}
.Inpt_text5{margin: 10px 0 0 80PX}
.Inpt_text6{margin: 10px 0 0 80PX}
.Inpt_text7{margin: 10px 0 0 80PX}
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
.Button{margin: 10px 0 0 550PX;}
.Button img{width: 100px;height: 100px;}
.Inpt_text input{width: 250px;height: 100px;background: #fff;font-size: 16px;outline: none;}
</style>
</head>
<title>创建队伍</title>
<body>
    <div class="Big_checkbox">
    <div class="Button">
						<a href = index.jsp><img src="pic/return.jpg"/></a>
					</div>
			<div class="Left_div">
			<form action="AddTeam">
			 <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请填写队伍信息</h1>
				<div class="Inpt_text1">
						队伍名：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="teamname" id="" value="" placeholder="请输入队伍名"/>
				</div>
				<div class="Inpt_text2">
						目的地：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="end" id="" value="" placeholder="请输入目的地"/>
				</div>
				<div class="Inpt_text3">
						所需人数：<input type="text" name="neednum" id="" value="" placeholder="所需人数"/>
				</div>
				<div class="Inpt_text4">
						已有人数：<input type="text" name="ownnum" id="" value="" placeholder="已有人数"/>
				</div>
				<div class="Inpt_text5">
						队伍成员：<input type="text" name="teammate" id="" value="" placeholder="队伍成员"/>
				</div>
				<div class="Inpt_text6">
						出发日期：<input type="text" name="day" id="" value="" placeholder="请输入出发日期"/>
				</div>
				<div class="Inpt_text7">
						队伍描述：<div class="Inpt_text"><input type="text" name="description" id="" value="" placeholder="队伍描述"/></div>
				</div>
				<div class="login_but">
						<button type="submit">创建</button>
				</div>
				</form>
			</div>
		</div>
</body>
</html>