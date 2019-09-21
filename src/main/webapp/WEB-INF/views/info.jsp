<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户管理</title>
<script type="text/javascript" src="<%=basePath%>static/js/jquery/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	//添加表单数据清空
	function restForm(){
		$("#id").val("");
		$("#uname").val("");
		$("#pwd").val("");
	}
    //修改
    function updateOne(e) {
        var tds = $(e).parents("td").parents("tr").find("td");
        var id = tds.eq(0).html();
        var uname = tds.eq(1).html();
        var pwd = tds.eq(2).html();
        $("#id").val(id);
		$("#uname").val(uname);
		$("#pwd").val(pwd);
        $(".formDiv").show();
        $("#formType").html("修改");
    }
	//添加表单show and hide
    $(function(){
    	$(".formDiv").hide();
    	
    	$("#addBtn").click(function(){
    		var _span = $(this).find("span").eq(0);
    		var _span_val = _span.html();
    		if(_span_val=='打开'){
    			_span.html("关闭");
    			$(".formDiv").hide();
    			restForm();
    		}
    		if(_span_val=='关闭'){
    			$("#formType").html("添加");
    			_span.html("打开");
    			$(".formDiv").show();
    			restForm();
    		}
    	});

    	$("#saveBtn").click(function(){
    		var id = $("#id").val();
    		var uname = $("#uname").val();
    		var pwd = $("#pwd").val();
    		if(id == ""){
    			alert("ID不能为空！");
    			return false;
    		}
    		var type =$("#formType").html();
    		if(type=="添加"){
    			$.post("${jpath}/select/insertOne",
        				{id:id,uname:uname,pwd:pwd},
        				function(data){
        			if(data==0){
        				alert("添加失败！")
        				return false;
        			}
        			$("#addBtn").find("span").eq(0).html("关闭");
        			$(".formDiv").hide();
        			restForm();
        			var trHtml ="<tr>";
        			trHtml +="<td style='display:none;'>"+id+"</td><td>"+uname+"</td><td>"+pwd+"</td>"
        			trHtml +="<td><a href='javascript:void(0);'  onclick='updateOne(e)'>修改</a>&nbsp;<a href='javascript:void(0);'  onclick='deleteOne(e)'>删除</a></td>";
        			trHtml +="</tr>"
        			$("#tblTitle").after(trHtml);
        			location.reload();
        		});
    		}
    		if(type=="修改"){
    			$.post("${jpath}/select/updateOne",
        				{id:id,uname:uname,pwd:pwd},
        				function(data){
        			if(data==0){
        				alert("修改失败！")
        				return false;
        			}
        			$("#addBtn").find("span").eq(0).html("关闭");
        			$(".formDiv").hide();
        			restForm();
        			location.reload();
        		});
    		}
    	});
    });
    //删除
	function deleteOne(e) {
		var tds = $(e).parents("td").parents("tr").find("td");
		var id = tds.eq(0).html();
		$.post("${jpath}/select/deleteOne",
				{id:id},
				function(data){
			if(data==0){
				alert("删除失败！")
				return false;
			}
			$("#addBtn").find("span").eq(0).html("关闭");
			$(".formDiv").hide();
			restForm();
			location.reload();
		});
    }   
</script>
<style>
	table{border:1px solid black;}
	th,td{width:150px;height:30px;line-height:30px;text-align:center;}
	h1{text-align:center;}
	span{width:50px;display:inline-block;text-align:right;}
	a{text-decoration:none;color:blue;outline:none;}
	a span{color:red;}
	.clear{clear:both;}
	.tf{height:35px;}
	.tfIpt{height:33px;width:90px;}
</style>
</head>
<body>
	<h1>用户管理界面</h1>
	<div style="width:700px;margin:auto;">
		<div style="float:left;">
			<form style="margin-top:50px;">
				<table>
					<tr id="tblTitle">
						<th style="display:none;">ID</th>
						<th>姓名</th>
						<th>密码</th>
						<!-- <th>电话号码</th>
						<th>电子邮箱</th> -->
						<th>操作</th>
					</tr>
					<c:forEach items="${key_list}" var="usr" varStatus="idx">
						<tr>
							<td style="display:none;">${usr.id }</td>
							<td>${usr.uname }</td>
							<td>${usr.pwd }</td>
							<%-- <td>${usr.phone }</td>
							<td>${usr.email }</td> --%>
							<td>
								<a href="#" onclick="updateOne(this)">修改</a>
								<a href="#" onclick="deleteOne(this)">删除</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
		
		<div style="float:right;margin-top:50px;">
		<a href="javascript:void(0);" id="addBtn" style="display:block;width:197px;">添加<span>关闭</span></a>
		<div class="formDiv">
			<div><span id="formType" style="text-align:left;"></span>-数据</div>
			<form action="${jpath}/select/insertOne" method="post">
				<div class="tf"><span>ID&nbsp;&nbsp;&nbsp;：</span><input type="text" name="id" id="id" /></div>
				<div class="tf"><span>姓名：</span><input type="text" name="uname" id="uname" /></div>
				<div class="tf"><span>密码：</span><input type="text" name="pwd" id="pwd" /></div>
				<div class="tf">
					<input type="button" id="saveBtn" class="tfIpt" value="保存" />
					&nbsp;&nbsp;&nbsp;
					<input type="button" onclick="restForm()" class="tfIpt" value="清空" />
				</div>
			</form>
		</div>
		</div>
	</div>
	<span class="clear"></span>
</body>
</html>