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
			
			url: bpath+'/warehouse/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        visible: true,
		        field: 'warehouse_id'
		      }, {
		        title: '仓库名称',
		        align: 'center',
		        field: 'warehouse_name'
		      }, {
		        title: '仓库地址',
		        align: 'center',
		        field: 'warehouse_address'
		      },{
		        title: '仓库描述',
		        align: 'center',
		        field: 'warehouse_describe'
		      },{
		        title: '仓库管理人',
		        align: 'center',
		        field: 'warehouse_man'
		      },{
		        title: '仓库状态',
		        align: 'center',
		        field: 'warehouse_status'
		      },{
		        title: '操作',
		        align: 'center',
		        field: 'warehouse_id',
		        formatter:function(value,row,index){
		        	var trHtml= "<button type='button' class='btn btn-warning' onclick='inventoryExcel("+JSON.stringify(row)+")' style='margin:0 10px 0 10px;'>盘库</button>";
		        	trHtml += "<button type='button' class='btn btn-success' onclick='toUpload()'>上传</button>";
		        	trHtml += "<button type='button' class='btn btn-primary' onclick='updateOne("+JSON.stringify(row)+")' style='margin:0 10px 0 10px;'>修改</button>";
		        	trHtml += "<button type='button' class='btn btn-danger' onclick='deleteOne("+JSON.stringify(row)+")' style='margin:0 10px 0 10px;'>删除</button>";
		        	return trHtml;
		        }
			}],
			responseHandler:function(data){
				var json = {
						total: 0,
						rows: []
				};
				json.total = data.total;
				json.rows = data.obj;

				return json;
			}
		});
	})

	//添加表单数据清空
	function restForm(){
		$("#warehouse_id").val("");
		$("#warehouse_name").val("");
		$("#warehouse_address").val("");
		$("#warehouse_describe").val("");
		$("#warehouse_man").val("");
		$("#warehouse_status").val("");
		
	}
	//修改
	function updateOne(e) {
	    var warehouse_id = e.warehouse_id;
	    var warehouse_name = e.warehouse_name;
	    var warehouse_address = e.warehouse_address;
	    var warehouse_describe = e.warehouse_describe;
	    var warehouse_man = e.warehouse_man;
	    var warehouse_status = e.warehouse_status;
	    $("#warehouse_id").val(warehouse_id);
	    $("#warehouse_name").val(warehouse_name);
	    $("#warehouse_address").val(warehouse_address);
	    $("#warehouse_describe").val(warehouse_describe);
	    $("#warehouse_man").val(warehouse_man);
	    $("#warehouse_status").val(warehouse_status);
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
			var warehouse_id = $("#warehouse_id").val();
			var warehouse_name = $("#warehouse_name").val();
			var warehouse_address = $("#warehouse_address").val();
			var warehouse_describe = $("#warehouse_describe").val();
			var warehouse_man = $("#warehouse_man").val();
			var warehouse_status = $("#warehouse_status").val();
			if(warehouse_id == ""){
				alert("ID不能为空！");
				return false;
			}
			var type =$("#formType").html();
			if(type=="添加"){
				$.post("${jpath}/warehouse/addUser",
	    				{warehouse_id:warehouse_id,warehouse_name:warehouse_name,warehouse_address:warehouse_address,
					warehouse_describe:warehouse_describe,warehouse_man:warehouse_man,warehouse_status:warehouse_status},
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
				$.post("${jpath}/warehouse/updateUser",
					{warehouse_id:warehouse_id,warehouse_name:warehouse_name,warehouse_address:warehouse_address,
					warehouse_describe:warehouse_describe,warehouse_man:warehouse_man,warehouse_status:warehouse_status},
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
		var warehouse_id = e.warehouse_id;
		$.post("${jpath}/warehouse/deleteById",{id:warehouse_id},function(data){
			
			location.reload();
		});
	}
	//盘库
	function inventoryExcel(e) {
		$.post("${jpath}/warehouse/inventoryExcel",{},function(data){
			var obj = JSON.parse(data);
			if(data != ""){
				window.open(bpath+"/"+obj.path);
			}
		});
	}
	
	//跳转上传页面
	function toUpload() {
		//location.href = bpath+"/warehouse/toUpload";
		layer.open({
			type: 2,
			area: ['700px', '450px'],
			fixed: false,
			maxmin: true,
			content: 'toUpload'
		});
		layer.close();
	}
	
</script>