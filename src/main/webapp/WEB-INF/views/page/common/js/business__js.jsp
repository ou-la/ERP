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
			
			url: bpath+'/business/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        visible: true,
		        field: 'business_id'
		      }, {
		        title: '企业名称',
		        align: 'center',
		        field: 'business_name'
		      }, {
		        title: '联系人',
		        align: 'center',
		        field: 'business_linkman'
		      },{
		        title: '联系电话',
		        align: 'center',
		        field: 'business_phone'
		      },{
		        title: '其他联系方式',
		        align: 'center',
		        field: 'business_contact_another'
		      },{
		        title: '地址',
		        align: 'center',
		        field: 'business_address'
		      },{
		        title: '企业类型',
		        align: 'center',
		        field: 'business_type'
		      },{
		        title: '操作',
		        align: 'center',
		        width: '100px',
		        field: 'business_id',
		        formatter:function(value,row,index){
		        	var trHtml= "<button type='button' class='btn btn-primary' onclick='updateOne("+JSON.stringify(row)+")' style='margin:10px;'>修改</button>";
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
		$("#business_id").val("");
		$("#business_name").val("");
		$("#business_linkman").val("");
		$("#business_phone").val("");
		$("#business_contact_another").val("");
		$("#business_address").val("");
		$("#business_type").val("");
		
	}
	//修改
	function updateOne(e) {
		var business_id = e.business_id;
		var business_name = e.business_name;
		var business_linkman = e.business_linkman;
		var business_phone = e.business_phone;
		var business_contact_another = e.business_contact_another;
		var business_address = e.business_address;
		var business_type = e.business_type;
		$("#business_id").val(business_id);
		$("#business_name").val(business_name);
		$("#business_linkman").val(business_linkman);
		$("#business_phone").val(business_phone);
		$("#business_contact_another").val(business_contact_another);
		$("#business_address").val(business_address);
		$("#business_type").val(business_type);
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
			var business_id = $("#business_id").val();
			var business_name = $("#business_name").val();
			var business_linkman = $("#business_linkman").val();
			var business_phone = $("#business_phone").val();
			var business_contact_another = $("#business_contact_another").val();
			var business_address = $("#business_address").val();
			var business_type = $("#business_type").val();
			if(business_id == ""){
				alert("ID不能为空！");
				return false;
			}
			var type =$("#formType").html();
			if(type=="添加"){
				$.post("${jpath}/business/addUser",
	    				{business_id:business_id,business_name:business_name,business_linkman:business_linkman,business_phone:business_phone,
					business_contact_another:business_contact_another,business_address:business_address,business_type:business_type,},
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
				$.post("${jpath}/business/updateUser",
					{business_id:business_id,business_name:business_name,business_linkman:business_linkman,business_phone:business_phone,
					business_contact_another:business_contact_another,business_address:business_address,business_type:business_type,},
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
		var business_id = e.business_id;
		$.post("${jpath}/business/deleteById",
				{id:business_id},
				function(data){
			location.reload();
		});
	}
</script>