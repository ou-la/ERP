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
			
			url: bpath+'/materiel/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        visible: true,
		        field: 'materiel_id'
		      }, {
		        title: '物料名称',
		        align: 'center',
		        field: 'materie_name'
		      }, {
		        title: '物料类型',
		        align: 'center',
		        field: 'materie_type'
		      },{
		        title: '物料规格',
		        align: 'center',
		        field: 'materie_specifications'
		      },{
		        title: '物料描述',
		        align: 'center',
		        field: 'materie_describe'
		      },{
		        title: '物料单价（元）',
		        align: 'center',
		        field: 'materie_price'
		      },{
		        title: '物料单位',
		        align: 'center',
		        field: 'materie_company'
		      },{
		        title: '物料数量',
		        align: 'center',
		        field: 'materie_number'
		      },{
		        title: '物料供应商',
		        align: 'center',
		        field: 'materie_supplier'
		      },{
		        title: '物料进货日期',
		        align: 'center',
		        field: 'materie_purchase_date'
		      }, {
		        title: '操作',
		        align: 'center',
		        width: '100px',
		        field: 'materiel_id',
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
	//修改
	function updateOne(e) {
		var materiel_id = e.materiel_id;
		var materie_name = e.materie_name;
		var materie_type = e.materie_type;
		var materie_specifications = e.materie_specifications;
		var materie_describe = e.materie_describe;
		var materie_price = e.materie_price;
		var materie_company = e.materie_company;
		var materie_number = e.materie_number;
		var materie_supplier = e.materie_supplier;
		var materie_purchase_date = e.materie_purchase_date;
		if(materiel_id != ""){
			layer.open({
				type: 2,
				area: ['700px', '450px'],
				fixed: false,
			 	maxmin: true,
				content: 'toMaterielUpdate?materiel_id='+materiel_id+"&materie_name="+materie_name+"&materie_type="+materie_type+"&materie_specifications="+materie_specifications+"&materie_describe="+materie_describe+"&materie_price="+materie_price+"&materie_company="+materie_company+"&materie_number="+materie_number+"&materie_supplier="+materie_supplier+"&materie_purchase_date="+materie_purchase_date
			});
		}
	}
	//删除
	function deleteOne(e) {
		var materiel_id = e.materiel_id;
		var materie_name = e.materie_name;
		$.post("${jpath}/materiel/deleteById",
				{id:materiel_id,materie_name:materie_name},
				function(data){
			location.reload();
		});
	}
	
	//弹框
	$("#addBtn").click(function(){
		layer.open({
			type: 2,
			area: ['700px', '450px'],
			fixed: false,
			maxmin: true,
			content: 'toMaterielAdd'
		});
	});
</script>