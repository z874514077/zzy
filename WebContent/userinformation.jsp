<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
*{margin: 0;padding: 0;}
body{background:url(pic/userinformation.jpg) no-repeat;background-size:100%,100%; }
.Big_checkbox{clear: both;}
.Left_div{width: 400px;height:350px;margin:50px 0px 0px 400px;float: left; background: rgba(255,255,255,0.4);}
.Inpt_text1{margin: 10PX 0 0 80PX ;}
.Inpt_text2{margin: 10PX 0 0 80PX ;}
.Inpt_text3{margin: 10px 0 0 80PX;}
.Inpt_text4{margin: 10px 0 0 80PX}
.Inpt_text5{margin: 10px 0 0 80PX}
.Inpt_text6{margin: 10px 0 0 80PX}
.Inpt_text7{margin: 10px 0 0 80PX}
.Inpt_text8{margin: 10px 0 0 80PX;}
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
</style>
</head>
<title>Insert title here</title>
<body>
    <div class="Big_checkbox">
    <div class="Button">
						<a href =index.jsp><img src="pic/return.jpg"/></a>
					</div>
			<div class="Left_div">
			<form action="AddUserDetail">
			 <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请完善个人信息</h1>
			     <input type="hidden" name="username" value="${username}" >
	             <input type="hidden" name="password" value="${password}" >
	             <input type="hidden" name="team" value="">
				<div class="Inpt_text1">
						用户名：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" id="" value="" placeholder="请输入用户名"/>
				</div>
				<div class="Inpt_text2">
						年龄：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="age" id="" value="" placeholder="请输入年龄"/>
				</div>
				<div class="Inpt_text3">
						性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sex" id="" value="" placeholder="请输入性别"/>
				</div>
				<div class="Inpt_text4">
						曾去地：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cengquguo" id="" value="" placeholder="请输入曾去地"/>
				</div>
				<div class="Inpt_text5">
						现住地：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="start" id="" value="" placeholder="请输入现住地"/>
				</div>
				<div class="Inpt_text6">
						目的地：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="destination" id="" value="" placeholder="请输入目的地"/>
				</div>
				<div class="Inpt_text7">
						出发日期：<input type="text" name="date" id="" value="" placeholder="请输入出发日期"/>
				</div>
				<div class="Inpt_text8">
						交友宣言：<input type="text" name="gexingqianming" id="" value="" placeholder="请输入交友宣言"/>
				</div>
				<div class="login_but">
						<button type="submit">提交</button>
				</div>
				</form>
			</div>
		<table>  
      <tr> 
       <td>欢迎你，</td> 
       <td>${username}</td> 
      </tr> 
      <tr>
		</div>
</body>
</html>