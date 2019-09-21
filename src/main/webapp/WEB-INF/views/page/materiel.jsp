<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="common/head.jsp" %>
<script src="${jpath}/static/layer/layer.js"></script>
<style>
	.btnDiv{
		height:55px;
		line-height:55px;
		position:absolute;
	}
</style>

<div style="width:100%;padding:2rem;background-color:#fff;">
	
	<div class="card-header bg-light">
           Materiel Table - 物料
       	</div>
       	<div class="btnDiv">
       		<button id="addBtn" type="button" class="btn btn-primary">
       			<i class="fa fa-download"></i> &nbsp; 添加
       		</button>
       	</div>
	<table id="table">
	</table>
	
</div>
<%@ include file="common/js/materie__js.jsp" %>
<%@ include file="common/bottom.jsp" %>