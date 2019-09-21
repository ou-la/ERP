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
			$("#purchase_commodity_uprice").val(arrData[index].materie_price);
			$("#materie_type").val(arrData[index].materie_type);
		}
	})
	
};

$(function(){
	findAll();
	
	var bid='${bill_id}';
	var btype='${bill_type}';
	var commodity='${purchase_commodity}';
	var supplier='${purchase_supplier}';
	var uprice='${purchase_commodity_uprice}';
	var number='${purchase_commodity_number}';
	var pprice='${purchase_commodity_price}';
	var price='${purchase_price}';
	var staff='${purchase_staff}';
	var date='${purchase_date}';
	var status='${purchase_status}';
	$("#saveBtn").click(function(){
		var bid=$("#bill_id").val();
		var btype=$("#bill_type").val();
		var commodity=$("#single-select").find("option:selected").text();
		var supplier=$("#purchase_supplier").val();
		var uprice=$("#purchase_commodity_uprice").val();
		var number=$("#purchase_commodity_number").val();
		var pprice = uprice*number;
		var price = uprice*number;
		var staff=$("#purchase_staff").val();
		var date=$("#purchase_date").val();
		var status=$("#purchase_status").val();
		if(bid == ""){
			alert("ID不能为空！");
			return false;
		}
		$.post("${jpath}/purchase/updateOne",
   			{bill_id:bid,
			bill_type:btype,
			purchase_commodity:commodity,
			purchase_supplier:supplier,
			purchase_commodity_uprice:uprice,
			purchase_commodity_number:number,
			purchase_commodity_price:price,
			purchase_price:price,
			purchase_staff:staff,
			purchase_date:date,
			purchase_status:status},
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