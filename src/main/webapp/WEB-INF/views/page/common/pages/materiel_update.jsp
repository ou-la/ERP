<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="../head.jsp" %>

<div class="page-wrapper">
	<div class="main-container">
		<div class="container-fluid">
	        	<div class="row">
	            		<div class="col-md-12">
	                		<div class="card">
			                    <div class="card-header bg-light">
			                    	物料修改
			                    </div>
	
			                    <div class="card-body">
			                        <div class="row">
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">ID</label>
			                                    <input id="materiel_id" class="form-control" value="${materiel_id}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4"></div>
			                        
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料名称</label>
			                                    <input id="materie_name" class="form-control" value="${materie_name}">
			                                    
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料类型</label>
			                                    <input id="materie_type" class="form-control" value="${materie_type}" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料规格</label>
			                                    <input id="materie_specifications" class="form-control" value="${materie_specifications}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4"></div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料数量</label>
			                                    <input id="materie_number" class="form-control" value="${materie_number}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-8"></div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料单价</label>
			                                    <input id="materie_price" class="form-control" value="${materie_price}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料单位</label>
			                                    <input id="materie_company" class="form-control" value="${materie_company}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-12">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料描述</label>
			                                    <textarea id="materie_describe" class="form-control" rows="6">${materie_describe}</textarea>
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">供应商</label>
			                                    <input id="materie_supplier" class="form-control" value="${materie_supplier}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">采购日期</label>
			                                    <input id="materie_purchase_date" class="form-control" value="${materie_purchase_date}" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-12">
			                                <button id="saveBtn" type="button" class="btn btn-danger">
			                                    <i class="fa fa-download"></i> &nbsp; 保存
			                                </button>
			                                <button id="restBtn" onclick="restForm()" type="button" class="btn btn-warning">
			                                    <i class="fa fa-clipboard"></i> &nbsp; 清空
			                                </button>
			                            </div>
			                            
			                    	</div>
			                    </div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../js/materiel_update_js.jsp" %>
<%@ include file="../bottom.jsp" %>