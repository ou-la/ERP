<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 注册 </title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>

<style type="text/css"> 
	body{
		margin: 0;
		padding: 0;
	}
	#OAA{
		width: 100%;
		height: 100%;
		position: absolute;
		background: url('${jpath}/static/imgs/bg3.jpg');
		background-repeat: no-repeat;
		background-size: cover;
		-webkit-background-size: cover;
		-o-background-size: cover;
		color:#696969;
	}
	#wb{
		width: 380px;
		height: 410px;
		background-color: rgba(255,255,255,0.4);
		position: absolute;
		top: 18%;
		right: 8rem;
	}
	#log-form{
		width: 350px;
		height: 410px;
		padding: 3rem 1rem;
		
	}
	#log-form input{
		width:346px;
		height:42px;
	}
	#log-form input:focus{
	    	border-style:solid;
	   	border-color: #03a9f4;
		box-shadow: 0 0 5px #03a9f4;
	}
	#log-form .loginform_ipt{
		width:328px;
		margin: 5px 0;
		border: 1px solid #696969;;
		box-shadow: none;
		background-color: transparent;
		color: #696969;
		padding: 2px 10px;
	}
	input::-moz-placeholder{
            color: #494045
        }
	#log-form .loginform_btn{
		width:100%;
		height:42px;
		border: 0;
		font-size: 15px;
		border-radius: 10px;
		margin-top:10px;
	}
	
	.code   
        {    
            font-family:Arial;   
            font-style:italic;   
            color:#696969;
            border:0;   
            padding:2px 3px;   
            letter-spacing:3px;   
            font-weight:bolder;   
        }
        #checkCode{
        }
        #loginDiv{
        	height:21px;
        	margin:21px 0;
        	float:right;
        }
        #loginDiv a{
        	text-decoration: none;
        	font-weight: 550;
            	color:#494045;
        }
        #loginDiv a:hover{
		color:#EA2000;
        }
</style>
<script>
function validate(){
	var name = document.getElementById("username").value;
	var pwd = document.getElementById("password").value;
	var pwd2 = document.getElementById("pwd").value;
	if(name.length <=0){   
		alert("请输入用户名");
	}else if(pwd.length == 0 ){   
		alert("密码不能为空");
	}else if(pwd.length <= 5 ){
		alert("密码不能少于六位数");
	}else if(pwd2 == 0 ){
		alert("请确认密码");
	}else if(pwd != pwd2 ){
		alert("两次输入密码不一致，请重新输入");
	}else{
		$.post("${jpath}/login/toRegister",{staff_name:name,staff_password:pwd},function(data){
			var json=$.parseJSON(data);
			alert(json.resMsg);
			if(json.resMsg == "注册成功"){
				location.reload();
			}
		});
	}
}
</script>
<div id="OAA">
	<div id="wb">
		<form id="log-form" method="POST">
			<h4 style="width:170px;float:left;">注册</h4>
			
			<div>
	                    <input type="text" id="username" name="username" class="loginform_ipt" placeholder="用户名" />
	                </div>
	                
			<div>
	                    <input type="password" id="password" name="password" class="loginform_ipt" placeholder="密码" />
	                </div>
	                
			<div>
	                    <input type="password" id="pwd" name="pwd" class="loginform_ipt" placeholder="确认密码" />
	                </div>
	                
	                <div>
	                    <button type="button" class="loginform_btn" onclick="validate();" style="cursor:pointer;">注册</button>
	                </div>
	                
			<div id="loginDiv"><a href="${jpath}/login/main">注册好了，前往登录</a></div>
	                
		</form>
	</div>
</div>

</body>
</html>