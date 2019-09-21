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
			
			url: bpath+'/export/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        visible: true,
		        field: 'bill_id'
		      }, {
		        title: '清单类型',
		        align: 'center',
		        field: 'bill_type'
		      }, {
		        title: '负责员工',
		        align: 'center',
		        field: 'export_staff'
		      },{
		        title: '出入物件',
		        align: 'center',
		        field: 'export_commodity'
		      },{
		        title: '物件数量',
		        align: 'center',
		        field: 'export_commodity_number'
		      },{
		        title: '物件单价',
		        align: 'center',
		        field: 'export_commodity_price'
		      },{
		        title: '物件单价',
		        align: 'center',
		        field: 'export_price'
		      },{
		        title: '出入时间',
		        align: 'center',
		        field: 'export_date'
		      },{
		        title: '操作',
		        align: 'center',
		        width: '100px',
		        field: 'bill_id',
		        formatter:function(value,row,index){
		        	/* var trHtml= "<button type='button' class='btn btn-primary' onclick='updateOne("+JSON.stringify(row)+")' style='margin:10px;'>修改</button>"; */
		        	var trHtml= "";
		        	trHtml += "<button type='button' class='btn btn-danger' onclick='deleteOne("+JSON.stringify(row)+")' style='margin:10px;'>删除</button>";
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
		$("#bill_id").val("");
		$("#bill_type").val("");
		$("#export_staff").val("");
		$("#export_commodity").val("");
		$("#export_commodity_number").val("");
		$("#export_commodity_price").val("");
		$("#export_price").val("");
		$("#export_date").val("");
	}
	//修改
	function updateOne(e) {
	    var bill_id = e.bill_id;
	    var bill_type = e.bill_type;
	    var export_staff = e.export_staff;
	    var export_commodity = e.export_commodity;
	    var export_commodity_number = e.export_commodity_number;
	    var export_commodity_price = e.export_commodity_price;
	    var export_price = e.export_price;
	    var export_date = e.export_date;
	    $("#bill_id").val(bill_id);
	    $("#bill_type").val(bill_type);
	    $("#export_staff").val(export_staff);
	    $("#export_commodity").val(export_commodity);
	    $("#export_commodity_number").val(export_commodity_number);
	    $("#export_commodity_price").val(export_commodity_price);
	    $("#export_price").val(export_price);
	    $("#export_date").val(export_date);
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
			if(type=="添加"){
				$.post("${jpath}/export/addUser",
	    				{bill_id:bill_id,bill_type:bill_type,export_staff:export_staff,export_commodity:export_commodity,
					export_commodity_number:export_commodity_number,export_commodity_price:export_commodity_price,
					export_price:export_price,export_date:export_date},
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
				$.post("${jpath}/export/updateUser",
					{bill_id:bill_id,bill_type:bill_type,export_staff:export_staff,export_commodity:export_commodity,
					export_commodity_number:export_commodity_number,export_commodity_price:export_commodity_price,
					export_price:export_price,export_date:export_date},
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
		var bill_id = e.bill_id;
		$.post("${jpath}/export/deleteById",
				{id:bill_id},
				function(data){
			location.reload();
		});
	}
</script>