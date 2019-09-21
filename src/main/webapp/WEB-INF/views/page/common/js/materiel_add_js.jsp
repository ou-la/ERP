<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<script type="text/javascript">

$(function(){
	$("#saveBtn").click(function(){
		var materiel_id = $("#materiel_id").val();
		var materie_name = $("#materie_name").val();
		var materie_type = $("#materie_type").val();
		var materie_specifications = $("#materie_specifications").val();
		var materie_describe = $("#materie_describe").val();
		var materie_price = $("#materie_price").val();
		var materie_company = $("#materie_company").val();
		var materie_number = $("#materie_number").val();
		var materie_supplier = $("#materie_supplier").val();
		var materie_purchase_date = $("#materie_purchase_date").val();
		if(materiel_id == ""){
			alert("ID不能为空！");
			return false;
		}
		$.post("${jpath}/materiel/addUser",
				{materiel_id:materiel_id,materie_name:materie_name,materie_type:materie_type,materie_specifications:materie_specifications,materie_describe:materie_describe,
			materie_price:materie_price,materie_company:materie_company,materie_number:materie_number,materie_supplier:materie_supplier,materie_purchase_date:materie_purchase_date},
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
	$("#materiel_id").val("");
	$("#materie_name").val("");
	$("#materie_type").val("");
	$("#materie_specifications").val("");
	$("#materie_describe").val("");
	$("#materie_price").val("");
	$("#materie_company").val("");
	$("#materie_number").val("");
	$("#materie_supplier").val("");
	$("#materie_purchase_date").val("");
}
</script>