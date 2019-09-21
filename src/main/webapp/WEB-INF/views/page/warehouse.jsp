<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="common/head.jsp" %>
<script src="${jpath}/static/layer/layer.js"></script>
<div style="width:100%;padding:2rem;background-color:#fff;">
	
	<div class="card-header bg-light">
          		Warehouse Table - 仓库
      		</div>

	<table id="table">
	</table>
	
	<%@ include file="common/pages/warehouse__add.jsp" %>
	
</div>

<%@ include file="common/js/warehouse__js.jsp" %>
<%@ include file="common/bottom.jsp" %>