<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="common/head.jsp" %>

	<div style="width:100%;padding:2rem;background-color:#fff;">
		
		<div class="card-header bg-light">
	           Business Table - 客户
	       	</div>
	
		<table id="table">
		</table>
		
		<%@ include file="common/pages/business__add.jsp" %>
		
	</div>
<%@ include file="common/js/business__js.jsp" %>
<%@ include file="common/bottom.jsp" %>