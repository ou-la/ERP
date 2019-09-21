<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">

function findAll(){
	var arrData = [];
	$.post('${jpath}/export/onlyFind',{},function (data){
		arrData = JSON.parse(data);
		console.log(arrData);
		var select_ = $("#single-select");
		var optionHtml="";
		for(var i = 0;i<arrData.length;i++){
			optionHtml+='<option value='+arrData[i].materiel_id+' style="width:160px;">'+arrData[i].materie_name+'</option>';
		}
		select_.append(optionHtml);
	})
	
	$("#single-select").change(function(){
		var value = $(this).val();
		/* var op = $(this).find('option:selected');
		var index = op.attr("index"); 
		console.log("1:"+value+",2:"+index);*/
		var index = value-1;
		if(arrData.length>0){
			$("#materie_supplier").val(arrData[index].materie_supplier);
			$("#materie_specifications").val(arrData[index].materie_specifications);
			$("#materie_price").val(arrData[index].materie_price);
			$("#materie_type").val(arrData[index].materie_type);
		}
	})
}; 

$(function(){
	findAll();
});
</script>
<div style="margin-bottom: 422px;">
	<a href="javascript:void(0);" id="addBtn"
		 style="display:block;width:100px;height:30px;line-height:30px;background: #42A5F5;color: #fff;text-align:center;float:left;">
		 添加
		 <span style="display:none;">关闭</span>
	</a>
	<div class="formDiv" style="float:left;margin-left:30px;margin-bottom: 50px;">
		<div style="display:none;"><span id="formType" style="text-align:left;">修改</span>-数据</div>
		<form method="post">
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="bill_id" id="bill_id" placeholder="ID" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="bill_type" id="bill_type" placeholder="清单类型" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_staff" id="export_staff" placeholder="负责员工" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_commodity" id="export_commodity" placeholder="出入物件" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_commodity_number" id="export_commodity_number" placeholder="物件数量" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_commodity_price" id="export_commodity_price" placeholder="物件单价" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="export_price" id="export_price" placeholder="总价" /></div>
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