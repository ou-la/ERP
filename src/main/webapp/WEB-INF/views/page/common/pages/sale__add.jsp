<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ include file="../head.jsp" %>
<script src="${jpath}/static/layer/layer.js"></script>

<div class="page-wrapper">
	<div class="main-container">
		<div class="container-fluid">
	        	<div class="row">
	            		<div class="col-md-12">
	                		<div class="card">
			                    <div class="card-header bg-light">
			                    	销售
			                    </div>
	
			                    <div class="card-body">
			                        <div class="row">
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">ID</label>
			                                    <input id="bill_id" class="form-control">
			                                </div>
			                            </div>
			                        
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">清单类型</label>
			                                    <input id="bill_type" class="form-control" value="销售" disabled="disabled">
			                                    
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4"></div>
			                            
			                            <div class="col-md-4">
			                                
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">选择客户</label>
			                                    <select id="business_name" class="form-control">
			                                        <option>请选择客户</option>
			                                    </select>
			                                    
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-8"></div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">联系人</label>
			                                    <input id="business_linkman" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">联系电话</label>
			                                    <input id="business_phone" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">其他联系方法</label>
			                                    <input id="business_contact_another" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-12">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">地址</label>
			                                    <input id="business_address" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">物料</label>
			                                    <select id="sale_pro" class="form-control">
			                                    	<option>请选择物料</option>
			                                    </select>
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">数量</label>
			                                    <input id="sale_pro_number" class="form-control">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">单价</label>
			                                    <input id="sale_pro_uprice" class="form-control">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">总价</label>
			                                    <input id="sale_pro_price" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">汇总</label>
			                                    <input id="sale_price" class="form-control" disabled="disabled">
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4"></div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">员工</label>
			                                    <select id="sale_staff" class="form-control">
			                                        <option>请选择员工</option>
			                                        <option>毛毛</option>
			                                        <option>五六七</option>
			                                    </select>
			                                </div>
			                            </div>
			                            
			                            <div class="col-md-4">
			                                <div class="form-group">
			                                    <label for="normal-input" class="form-control-label">采购日期</label>
			                                    <input id="sale_date" class="form-control" disabled="disabled">
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
<%@ include file="../js/sale_add_js.jsp" %>
<%@ include file="../bottom.jsp" %>