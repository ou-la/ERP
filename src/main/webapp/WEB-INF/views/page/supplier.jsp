<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="common/head.jsp" %>

	<div style="width:100%;padding:2rem;background-color:#fff;">
	
		<div class="card-header bg-light">
			Supplier Table - 物料
		</div>
		
		<table id="table">
		</table>
			
		<%@ include file="common/pages/supplier_add.jsp" %>
		
	</div>

<%@ include file="common/js/supplier_js.jsp" %>
<%@ include file="common/bottom.jsp" %>