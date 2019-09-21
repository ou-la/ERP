<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<html>
<head>
<meta charset="utf-8">
<title>跳转</title>
<style type="text/css">
	*{text-align:center;}
	#subBtn{width:150px;height:30px;text-align:center;}
</style>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
</head> 
<body>
<h2>欢迎您的到来</h2>
	<form method="post" action="${jpath}/select/selectById">
		<input type="submit" value="ID查询" id="subBtn" />
	</form>
	
	<form method="post" action="${jpath}/select/selectByPwd">
		<input type="submit" value="全部查询" id="subBtn" />
	</form>
</body>

</html>
