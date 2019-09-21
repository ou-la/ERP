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
			
			url: bpath+'/sale/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        field: 'bill_id'
		      }, {
		        title: '货单类型',
		        align: 'center',
		        field: 'bill_type'
		      }, {
		        title: '企业名称',
		        align: 'center',
		        field: 'business_name'
		      },{
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
		        title: '销售产品',
		        align: 'center',
		        field: 'sale_pro'
		      },{
		        title: '产品数量',
		        align: 'center',
		        field: 'sale_pro_number'
		      },{
		        title: '产品单价',
		        align: 'center',
		        field: 'sale_pro_uprice'
		      },{
		        title: '产品总价',
		        align: 'center',
		        field: 'sale_pro_price'
		      },{
		        title: '价格汇总',
		        align: 'center',
		        field: 'sale_price'
		      },{
		        title: '销售人员',
		        align: 'center',
		        field: 'sale_staff'
		      },{
		        title: '销售日期',
		        align: 'center',
		        field: 'sale_date'
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
	//修改
	function updateOne(e) {
		var bill_id = e.bill_id;
		var bill_type = e.bill_type;
		var business_name = e.business_name;
		var business_linkman = e.business_linkman;
		var business_phone = e.business_phone;
		var business_contact_another = e.business_contact_another;
		var business_address = e.business_address;
		var sale_pro = e.sale_pro;
		var sale_pro_number = e.sale_pro_number;
		var sale_pro_uprice = e.sale_pro_uprice;
		var sale_pro_price = e.sale_pro_price;
		var sale_price = e.sale_price;
		var sale_staff = e.sale_staff;
		var sale_date = e.sale_date;
		if(bill_id != ""){
			layer.open({
				type: 2,
				area: ['700px', '450px'],
				fixed: false,
			 	maxmin: true,
				content: 'toMaterielUpdate?bill_id='+bill_id+"&bill_type="+bill_type+"&business_name="+business_name+"&business_linkman="+business_linkman+"&business_phone="+business_phone+"&business_contact_another="+business_contact_another+"&business_address="+business_address+"&sale_pro="+sale_pro+"&sale_pro_number="+sale_pro_number+"&sale_pro_uprice="+sale_pro_uprice+"&sale_pro_price="+sale_pro_price+"&sale_price="+sale_price+"&sale_staff="+sale_staff+"&sale_date="+sale_date
			});
		}
	}
	
	//删除
	function deleteOne(e) {
		var bill_id = e.bill_id;
		$.post("${jpath}/sale/deleteById",
				{id:bill_id},
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
			content: 'toSaleAdd'
		});
	});
</script>