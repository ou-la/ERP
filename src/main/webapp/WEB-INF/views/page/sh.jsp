<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="common/head.jsp" %>
<script src="${jpath}/static/plugin/jq-signature.min.js"></script>
<script type="text/javascript">
$(function(){
	var status = "${status }"
	$('#single-select').val(status);
	
	$('.qianming').jqSignature({width:400,height:200});
	
	$('#qdQm').click(function(){
		var qm = $('.qianming').jqSignature('getDataURL');
		$('#qmIpt').val(qm);
		alert("确定签名！")
	});
	
	$('#cxQm').click(function(){
		$('#qmIpt').val("");
		$('.qianming').jqSignature('clearCanvas');
	});
	
	$('#save').click(function(){
		var qm=$('#qmIpt').val();
		if(qm = ''){
			alert("请签名");
			return false;
		}
		var id = $('#id').val();
		var status = $('#single-select').val();
		var purchase_img = $('#qmIpt').val();
		var purchase_commodity = '${purchase_commodity}';
		var purchase_commodity_number = '${purchase_commodity_number}';
		$.post(bpath+"/purchase/updateUser",{bill_id:id,purchase_status:status,purchase_img:purchase_img,purchase_commodity:purchase_commodity,purchase_commodity_number:purchase_commodity_number},function(data){
			if(data == 1){
				alert("修改成功");
				location.href = bpath+"/purchase/main";
			}else{
				alert("修改失败");
			}
		});
	});
});
</script>

	<div class="page-wrapper">
	    <div class="main-container">
		    <div class="container-fluid">
		        <div class="row">
		            <div class="col-md-12">
		                <div class="card">
		
						    <div class="card-header bg-light">审核界面</div>
						    <div class="card-body">
						        <div class="row">
						            <div class="col-md-6">
						                <div class="form-group">
						                    <label for="normal-input" class="form-control-label">审核状态：</label>
						                    <input type="hidden" name="id" id="id" value="${id }">
						                    
						                    <select id="single-select" name="stuSex" class="form-control">
					                            	<option>审核通过</option>
					                            	<option>待审核</option>
					                            	<option>审核不过</option>
					                         </select>
						                </div>
						            </div>
						            
						            <div class="col-md-6">
						           	<input type="hidden" name="qianming" id="qmIpt" value="${img}"  />
						           	<c:if test="${status == '审核通过'}">
						           		<img src="${jpath}/static/upload/${img}" />
						           	</c:if>
						           	<c:if test="${status != '审核通过'}">
						           		<div class="qianming"></div>
						            		<button type="button" class="btn" id="qdQm">确定</button>
						            		<button type="button" class="btn" id="cxQm">重签</button>
						           	</c:if>
						            </div>
						            
						            <div class="col-md-4">
						            	<div class="form-group">
							            	<button type="button" id="save" class="btn btn-primary">
							            		保存
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
	</div>

<%@ include file="common/js/purchase_js.jsp" %>
<%@ include file="common/bottom.jsp" %>