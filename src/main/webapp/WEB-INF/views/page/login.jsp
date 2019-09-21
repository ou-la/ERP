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
    <title> 登录 </title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body onLoad="createCode()">

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
        #registerDiv{
        	height:21px;
        	margin:21px 0;
        	float:right;
        }
        #registerDiv a{
        	text-decoration: none;
        	font-weight: 550;
            	color:#494045;
        }
        #registerDiv a:hover{
		color:#EA2000;
        }
</style>
<script type="text/javascript">  
	var code ; //在全局 定义验证码   
	function createCode(){    
		code = "";   
		var codeLength = 6;//验证码的长度   
		var checkCode = document.getElementById("checkCode");   
		var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的 
		for(var i=0;i<codeLength;i++)   
		{   
			var charIndex = Math.floor(Math.random()*36);   
			code +=selectChar[charIndex];   
		}    
		if(checkCode)   
		{   
			checkCode.className="code";   
			checkCode.value = code;
			checkCode.blur();
		}        
	}     
	function validate (){
		var inputCode = document.getElementById("validCode").value;
		var name = document.getElementById("username").value;
		var pwd = document.getElementById("password").value;
		if(name.length == 0){
			alert("用户名不能为空");
		}else if(pwd.length == 0){
				alert("密码不能为空");
		}else if(pwd.length <= 5){
					alert("密码不能少于六位数");
		}else if(inputCode.length <=0){   
						alert("请输入验证码！");   
		}else if(inputCode.toUpperCase() != code ){   
			alert("验证码输入错误！");   
			createCode();//刷新验证码   
		}else{	
			var staff_name = $("#username").val();
			var staff_password = $("#password").val();
			$.post("${jpath}/login/toLogin",{staff_name:staff_name,staff_password:staff_password},function(data){
				var json=$.parseJSON(data);
				alert(json.resMsg);
				if(json.resMsg == "登陆成功"){
					location.href = "${jpath}/login/index";
				}else{
					createCode();
				}
		 	});
		}
	}
</script>
<div id="OAA">
	<div id="wb">
		<form id="log-form" method="POST">
			<h4 style="width:170px;float:left;">账号密码登录</h4>
			<div>
	                    <input type="text" id="username" name="username" class="loginform_ipt" placeholder="用户名" />
	                </div>
			<div>
	                    <input type="password" id="password" name="password" class="loginform_ipt" placeholder="密码" />
	                </div>
			<div>
	                    <input type="text" id="validCode" class="loginform_ipt" style="width:238px;float:left;" placeholder="验证码" />
	                    <input type="text" onClick="createCode()" readonly="readonly" id="checkCode" style="width: 80px;cursor:pointer;float:right;margin-top:5px;"  /><br />
	                </div>
	                
	                <div>
	                    <button type="button" class="loginform_btn" onclick="validate();" style="cursor:pointer;">登录</button>
	                </div>
	                
			<div id="registerDiv"><a href="${jpath}/login/register">没有账号？前往注册</a></div>
	                
		</form>
	</div>
</div>

</body>
</html>