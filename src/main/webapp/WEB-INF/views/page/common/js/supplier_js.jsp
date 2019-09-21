<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<script type="text/javascript">

	//footstrap table
	$(function(){
		$('#table').bootstrapTable({
			search: true,
			pagination: true,
			sidePagination: 'server',
			pageNumber: 1,
			pageSize: 5,
			pageList: [2, 5, 10,20,50, 100],
			
			url: bpath+'/supplier/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        visible: true,
		        field: 'supplier_id'
		      }, {
		        title: '供应商',
		        align: 'center',
		        field: 'supplier_name'
		      }, {
		        title: '供应物料',
		        align: 'center',
		        field: 'supplier_materiel'
		      },{
		        title: '供应商类型',
		        align: 'center',
		        field: 'supplier_type'
		      },{
		        title: '联系人',
		        align: 'center',
		        field: 'supplier_linkman'
		      },{
		        title: '联系电话',
		        align: 'center',
		        field: 'supplier_phone'
		      },{
		        title: '其他联络方式',
		        align: 'center',
		        field: 'supplier_contact_another'
		      },{
		        title: '供应商地址',
		        align: 'center',
		        field: 'supplier_address'
		      },{
		        title: '操作',
		        align: 'center',
		        width: '100px',
		        field: 'supplier_id',
		        formatter:function(value,row,index){
		        	var trHtml= "<button type='button' class='btn btn-primary' onclick='updateOne("+JSON.stringify(row)+")' style='margin:10px;'>修改</button>";
		        	trHtml += "<button type='button' class='btn btn-danger' onclick='deleteOne("+JSON.stringify(row)+")' style='margin:10px;'>删除</button>";
		        	return trHtml;
		        }
			}],
			responseHandler:function(data){
				console.log(data);
				var json = {
						total: 0,
						rows: []
				};
				json.total = data.total;
				json.rows = data.obj;

				console.log(json);
				return json;
			}
		});
	})

	//添加表单数据清空
	function restForm(){
		$("#supplier_id").val("");
		$("#supplier_name").val("");
		$("#supplier_materiel").val("");
		$("#supplier_type").val("");
		$("#supplier_linkman").val("");
		$("#supplier_phone").val("");
		$("#supplier_contact_another").val("");
		$("#supplier_address").val("");
	}
	//修改
	function updateOne(e) {
	    /* var tds = $(e).parents("td").parents("tr").find("td");
	    var supplier_id = tds.eq(0).html();
	    var supplier_name = tds.eq(1).html();
	    var supplier_materiel = tds.eq(2).html();
	    var supplier_type = tds.eq(3).html();
	    var supplier_linkman = tds.eq(4).html();
	    var supplier_phone = tds.eq(5).html();
	    var supplier_contact_another = tds.eq(6).html();
	    var supplier_address = tds.eq(7).html(); */
	    var supplier_id = e.supplier_id;
	    var supplier_name = e.supplier_name;
	    var supplier_materiel = e.supplier_materiel;
	    var supplier_type = e.supplier_type;
	    var supplier_linkman = e.supplier_linkman;
	    var supplier_phone = e.supplier_phone;
	    var supplier_contact_another = e.supplier_contact_another;
	    var supplier_address = e.supplier_address;
	    $("#supplier_id").val(supplier_id);
		$("#supplier_name").val(supplier_name);
		$("#supplier_materiel").val(supplier_materiel);
		$("#supplier_type").val(supplier_type);
		$("#supplier_linkman").val(supplier_linkman);
		$("#supplier_phone").val(supplier_phone);
		$("#supplier_contact_another").val(supplier_contact_another);
		$("#supplier_address").val(supplier_address);
		$(".formDiv").show();
	    $("#formType").html("修改");
	}
	//添加表单show and hide
	$(function(){
		$(".formDiv").hide();
    	
    	$("#addBtn").click(function(){
    		var _span = $(this).find("span").eq(0);
    		var _span_val = _span.html();
    		if(_span_val=='打开'){
    			_span.html("关闭");
    			$(".formDiv").hide();
    			restForm();
    		}
    		if(_span_val=='关闭'){
    			$("#formType").html("添加");
    			_span.html("打开");
    			$(".formDiv").show();
    			restForm();
    		}
    	});
		
		$("#saveBtn").click(function(){
			var supplier_id = $("#supplier_id").val();
			var supplier_name = $("#supplier_name").val();
			var supplier_materiel = $("#supplier_materiel").val();
			var supplier_type = $("#supplier_type").val();
			var supplier_linkman = $("#supplier_linkman").val();
			var supplier_phone = $("#supplier_phone").val();
			var supplier_contact_another = $("#supplier_contact_another").val();
			var supplier_address = $("#supplier_address").val();
			if(supplier_id == ""){
				alert("ID不能为空！");
				return false;
			}
			var type =$("#formType").html();
			if(type=="添加"){
				$.post("${jpath}/supplier/addUser",
	    				{supplier_id:supplier_id,supplier_name:supplier_name,supplier_materiel:supplier_materiel,supplier_type:supplier_type,
					supplier_linkman:supplier_linkman,supplier_phone:supplier_phone,supplier_contact_another:supplier_contact_another,supplier_address:supplier_address},
	    				function(data){
	    			if(data==0){
	    				alert("添加失败！")
	    				return false;
	    			}
	    			restForm();
	    			location.reload();
	    		});
			}
			if(type=="修改"){
				$.post("${jpath}/supplier/updateUser",
						{supplier_id:supplier_id,supplier_name:supplier_name,supplier_materiel:supplier_materiel,supplier_type:supplier_type,
					supplier_linkman:supplier_linkman,supplier_phone:supplier_phone,supplier_contact_another:supplier_contact_another,supplier_address:supplier_address},
	    				function(data){
	    			if(data==0){
	    				alert("修改失败！")
	    				return false;
	    			}
	    			$("#addBtn").find("span").eq(0).html("关闭");
	    			$(".formDiv").hide();
	    			restForm();
	    			location.reload();
	    		});
			}
		});
	});
	//删除
	function deleteOne(e) {
		//var tds = $(e).parents("td").parents("tr").find("td");
		var supplier_id = e.supplier_id;
		$.post("${jpath}/supplier/deleteById",
				{id:supplier_id},
				function(data){
			location.reload();
		});
	}
</script>