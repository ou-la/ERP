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
    <title>ERP管理系统</title>
    <link rel="stylesheet" href="${jpath}/static/indexpage/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="${jpath}/static/indexpage/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${jpath}/static/indexpage/css/styles.css">
</head>
<body class="sidebar-fixed header-fixed">

<div class="page-wrapper" style="overflow-y: hidden;">
    <nav class="navbar page-header">
        <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
            <i class="fa fa-bars"></i>
        </a>

        <a class="navbar-brand" href="#">
            <img src="${jpath}/static/indexpage/imgs/logo.png" alt="logo">
        </a>

        <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
            <i class="fa fa-bars"></i>
        </a>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item d-md-down-none">
                <a href="#">
                    <i class="fa fa-bell"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
            </li>

            <li class="nav-item d-md-down-none">
                <a href="#">
                    <i class="fa fa-envelope-open"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img src="${jpath}/static/indexpage/imgs/avatar-1.png" class="avatar avatar-sm" alt="logo">
                    <span class="small ml-1 d-md-down-none">欢迎您，PDD</span>
                </a>

                <div class="dropdown-menu dropdown-menu-right">
                    <div class="dropdown-header">Account</div>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-user"></i> Profile
                    </a>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-envelope"></i> Messages
                    </a>

                    <div class="dropdown-header">Settings</div>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-bell"></i> Notifications
                    </a>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-wrench"></i> Settings
                    </a>

                    <a href="#" class="dropdown-item" id="logOut">
                        <i class="fa fa-lock"></i> Logout
                    </a>
                </div>
            </li>
        </ul>
    </nav>

    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">测试菜单</li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 页面表单 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="${jpath}/supplier/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 供应商
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/materiel/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 物料
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/purchase/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 入库/采购
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/export/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 出库
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/warehouse/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 仓库
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/stock/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 库存
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/business/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 客户
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="${jpath}/sale/main" class="nav-link nav-linkBtn">
                                    <i class="icon icon-target"></i> 销售
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="content" style="padding:0;">
            <iframe id="contentIframe" src="http://www.baidu.com" style="border:0;width:100%;height:100%;">
            
            </iframe>
        </div>
    </div>
</div>

<script src="${jpath}/static/indexpage/vendor/jquery/jquery.min.js"></script>
<script src="${jpath}/static/indexpage/vendor/popper.js/popper.min.js"></script>
<script src="${jpath}/static/indexpage/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${jpath}/static/indexpage/vendor/chart.js/chart.min.js"></script>
<script src="${jpath}/static/indexpage/js/carbon.js"></script>
<script src="${jpath}/static/indexpage/js/demo.js"></script>
<script type="text/javascript">
$(function(){
	$(".nav-linkBtn").click(function(){
		var href = $(this).attr("href");
		var iSrc = $("#contentIframe").attr("src",href);
		return false;
	});
	
	$(".nav-linkBtn").click(function(){
		var ff = $(this).parent();//我的父节点
		var fbro = ff.siblings("li.nav-item");//我的父节点的兄弟节点
		var bro = fbro.children("a");//异父异母的兄弟节点
		var cls = bro.attr("class");//异父异母的兄弟节点的class
		if(cls == "nav-link nav-linkBtn"){
			$(this).addClass("active");
		}
		if(cls == "nav-link nav-linkBtn active"){
			$(this).addClass("active");
			$(bro).removeClass("active");
		}
	});
	
	$("#logOut").click(function(){
		alert("成功退出");
		location.href="${jpath}/login/main";
	});
});
</script>
</body>
</html>
