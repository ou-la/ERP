<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="../head.jsp" %>

<div style="width:100%;padding:2rem;background-color:#fff;">
	
	<div class="card-header bg-light">
	         添加出库信息
	</div>
	<div>
		<form method="post">
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="bill_id" id="bill_id" placeholder="ID" value="${bill_id }" disabled="disabled" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="bill_type" id="bill_type" placeholder="清单类型" value="出库" disabled="disabled" /></div>
			<div>
                                <select name="export_staff" id="export_staff" class="form-control" style="width:220px;">
                                    <option>请选择员工</option>
                                    <option>毛毛</option>
                                    <option>五六七</option>
                                </select>
                        </div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_commodity" id="export_commodity" placeholder="出入物件"  value="${sale_pro }" disabled="disabled" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_commodity_number" id="export_commodity_number" placeholder="物件数量" value="${sale_pro_number }" disabled="disabled" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_commodity_price" id="export_commodity_price" placeholder="物件单价" value="${sale_pro_uprice }" disabled="disabled" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_price" id="export_price" placeholder="总价" value="${sale_pro_price }" disabled="disabled" /></div>
			<div>
				<input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_date" id="export_date" placeholder="出入时间" disabled="disabled" />
			</div>
			<div>
				<input type="button" id="saveBtn" class="tfIpt" value="保存" 
				style="width:100px;height:30px;line-height:30px;background:#EF5350;color:#fff;border:0;cursor: pointer;" />
				&nbsp;&nbsp;&nbsp;
				<input type="button" onclick="restForm()" class="tfIpt" value="清空" 
				style="width:100px;height:30px;line-height:30px;background:#FFCA28;color:#fff;border:0;cursor: pointer;" />
			</div>
		</form>
	</div>
	
</div>
<script type="text/javascript">
//添加表单数据清空
function restForm(){
	$("#bill_id").val("");
	$("#bill_type").val("");
	$("#export_staff").val("");
	$("#export_commodity").val("");
	$("#export_commodity_number").val("");
	$("#export_commodity_price").val("");
	$("#export_price").val("");
	$("#export_date").val("");
}
$("#saveBtn").click(function(){
	var bill_id = $("#bill_id").val();
	var bill_type = $("#bill_type").val();
	var export_staff = $("#export_staff").val();
	var export_commodity = $("#export_commodity").val();
	var export_commodity_number = $("#export_commodity_number").val();
	var export_commodity_price = $("#export_commodity_price").val();
	var export_price = $("#export_price").val();
	var export_date = $("#export_date").val();
	if(bill_id == ""){
		alert("ID不能为空！");
		return false;
	}
	var type =$("#formType").html();
	$.post("${jpath}/export/addUser",
			{bill_id:bill_id,bill_type:bill_type,export_staff:export_staff,export_commodity:export_commodity,
		export_commodity_number:export_commodity_number,export_commodity_price:export_commodity_price,
		export_price:export_price,export_date:export_date},
			function(data){
		if(data==0){
			alert("添加失败！")
			return false;
		}
		parent.location.reload()//父页面刷新
		var index = parent.layer.getFrameIndex(window.name);//获得子页面索引
		parent.layer.close(index);//关闭子页面
	});
	
});
</script>
<%@ include file="../bottom.jsp" %>