<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<script type="text/javascript">
function findAll(){

	var arrData = [];
	$.post('${jpath}/materiel/saleFind',{},function (data){
		arrData = JSON.parse(data);
		console.log(arrData);
		var select_ = $("#sale_pro");
		var optionHtml="";
		for(var i = 0;i<arrData.length;i++){
			optionHtml+='<option style="width:220px;" value='+arrData[i].materiel_id+' style="width:160px;">'+arrData[i].materie_name+'</option>';
		}
		select_.append(optionHtml);
	})
	
	$("#sale_pro").change(function(){
		var value = $(this).val();
		var index = value-1;
		if(arrData.length>0){
			$("#sale_pro_uprice").val(arrData[index].materie_price);
		}
	})
	
	var brrData = [];
	$.post('${jpath}/business/businessFind',{},function (data){
		brrData = JSON.parse(data);
		console.log(brrData);
		var select_ = $("#business_name");
		var optionHtml="";
		for(var i = 0;i<brrData.length;i++){
			optionHtml+='<option style="width:220px;" value='+brrData[i].business_id+' style="width:160px;">'+brrData[i].business_name+'</option>';
		}
		select_.append(optionHtml);
	})
	
	$("#business_name").change(function(){
		var value = $(this).val();
		var index = value-1;
		if(arrData.length>0){
			$("#business_linkman").val(brrData[index].business_linkman);
			$("#business_phone").val(brrData[index].business_phone);
			$("#business_contact_another").val(brrData[index].business_contact_another);
			$("#business_address").val(brrData[index].business_address);
		}
	})
};

$(function(){
	findAll();
	
	$("#saveBtn").click(function(){
		var bill_id = $("#bill_id").val();
		var bill_type = $("#bill_type").val();
		var business_name = $("#business_name").find("option:selected").text();
		var business_linkman = $("#business_linkman").val();
		var business_phone = $("#business_phone").val();
		var business_contact_another = $("#business_contact_another").val();
		var business_address = $("#business_address").val();
		var sale_pro = $("#sale_pro").find("option:selected").text();
		var sale_pro_number = $("#sale_pro_number").val();
		var sale_pro_uprice = $("#sale_pro_uprice").val();
		var sale_pro_price = sale_pro_number*sale_pro_uprice;
		var sale_price = sale_pro_number*sale_pro_uprice;
		var sale_staff = $("#sale_staff").val();
		var sale_date = $("#sale_date").val();
		if(bill_id == ""){
			alert("ID不能为空！");
			return false;
		}
		$.post("${jpath}/sale/addUser",
			{bill_id:bill_id,bill_type:bill_type,business_name:business_name,business_linkman:business_linkman,business_phone:business_phone,
			business_contact_another:business_contact_another,business_address:business_address,sale_pro:sale_pro,sale_pro_number:sale_pro_number,
			sale_pro_uprice:sale_pro_uprice,sale_pro_price:sale_pro_price,sale_price:sale_price,sale_staff:sale_staff,sale_date:sale_date},
				function(data){
    			if(data==0){
    				alert("添加失败！")
    				return false;
    			}
    			layer.open({
				  type: 2,
				  area: ['700px', '450px'],
				  fixed: false,
				  maxmin: true,
				  content: 'toExport?bill_id='+bill_id+"&sale_pro="+$("#sale_pro").find("option:selected").text()+"&sale_pro_number="+sale_pro_number+"&sale_pro_uprice="+sale_pro_uprice+"&sale_pro_price="+sale_pro_price
			});
    		});
	});
})

//添加表单数据清空
function restForm(){
	$("#bill_id").val("");
	$("#bill_type").val("");
	$("#business_name").val("");
	$("#business_linkman").val("");
	$("#business_phone").val("");
	$("#business_contact_another").val("");
	$("#business_address").val("");
	$("#sale_pro").val("");
	$("#sale_pro_number").val("");
	$("#sale_pro_uprice").val("");
	$("#sale_pro_price").val("");
	$("#sale_price").val("");
	$("#sale_staff").val("");
	$("#sale_date").val("");
}
</script>