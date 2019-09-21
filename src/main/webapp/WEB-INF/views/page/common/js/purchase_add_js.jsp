<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<script type="text/javascript">
function findAll(){
	var arrData = [];
	$.post('${jpath}/purchase/purchaseAddList',{},function (data){
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

	$("#saveBtn").click(function(){
		var bill_id = $("#bill_id").val();
		var bill_type = $("#bill_type").val();
		var purchase_commodity = $("#single-select").find("option:selected").text();
		var purchase_supplier = $("#materie_supplier").val();
		var purchase_commodity_uprice = $("#materie_price").val();
		var purchase_commodity_number = $("#purchase_commodity_number").val();
		var purchase_commodity_price = purchase_commodity_uprice*purchase_commodity_number;
		var purchase_price = purchase_commodity_uprice*purchase_commodity_number;
		var purchase_staff = $("#purchase_staff").val();
		var purchase_date = $("#purchase_date").val();
		var purchase_status = $("#purchase_status").val();
		if(bill_id == ""){
			alert("ID不能为空！");
			return false;
		}
		$.post("${jpath}/purchase/addUser",
   			{bill_id:bill_id,bill_type:bill_type,purchase_commodity:purchase_commodity,purchase_supplier:purchase_supplier,
			purchase_commodity_uprice:purchase_commodity_uprice,purchase_commodity_number:purchase_commodity_number,purchase_commodity_price:purchase_commodity_price,
			purchase_price:purchase_price,purchase_staff:purchase_staff,purchase_date:purchase_date,purchase_status:purchase_status},
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
})
function child(d) {
      alert(d)
    //在这里你可以写你的jquery $(function(){ })   等等操作

}

//添加表单数据清空
function restForm(){
	$("#bill_id").val("");
	$("#bill_type").val("");
	$("#purchase_commodity").val("");
	$("#materie_supplier").val("");
	$("#materie_price").val("");
	$("#purchase_commodity_number").val("");
	$("#purchase_commodity_price").val("");
	$("#purchase_price").val("");
	$("#purchase_staff").val("");
	$("#purchase_date").val("");
	$("#purchase_status").val("");	
}
</script>