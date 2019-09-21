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
			                    	入库
			                    </div>
	
			                    <div class="card-body">
			                        <div class="row">
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">ID</label>
			                                    <input id="bill_id" class="form-control" value="${bill_id}" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">订单类型</label>
			                                    <input id="bill_type" class="form-control" value="${bill_type}" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4"></div>
			                        
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">选择物料</label>
			                                    <select id="single-select" class="form-control">
			                                        <option id="purchase_commodity">请选择物料</option>
			                                    </select>
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4"></div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">供应商</label>
			                                    <input id="purchase_supplier" class="form-control" disabled="disabled" value="${purchase_supplier}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料类型</label>
			                                    <input id="materie_type" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料规格</label>
			                                    <input id="materie_specifications" class="form-control" disabled="disabled"">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料数量</label>
			                                    <input id="purchase_commodity_number" class="form-control" value="${purchase_commodity_number}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-8"></div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">单价</label>
			                                    <input id="purchase_commodity_uprice" class="form-control" disabled="disabled" value="${purchase_commodity_uprice}">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">总价</label>
			                                    <input id="purchase_commodity_price" class="form-control" value="${purchase_commodity_price}" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">汇总</label>
			                                    <input id="purchase_price" class="form-control" value="${purchase_price}" disabled="disabled">
			                                </div>
			                            </div>
			                        
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">采购员工</label>
			                                    <select id="purchase_staff" class="form-control" value="${purchase_staff}">
			                                        <option>请选择员工</option>
			                                        <option>毛毛</option>
			                                        <option>五六七</option>
			                                    </select>
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">采购日期</label>
			                                    <input id="purchase_date" class="form-control" value="${purchase_date}" disabled="disabled">
			                                </div>
			                            </div>
			                        
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">审核状态</label>
			                                    <select id="purchase_status" class="form-control" value="${purchase_status}">
			                                        <option>待审核</option>
			                                        <option>审核通过</option>
			                                        <option>审核驳回</option>
			                                    </select>
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-12">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">入库描述</label>
			                                    <textarea id="textarea" class="form-control" rows="6" value="${bill_id}"></textarea>
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
<%@ include file="../js/purchase_update_js.jsp" %>
<%@ include file="../bottom.jsp" %>