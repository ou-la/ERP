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
			
			url: bpath+'/purchase/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: 'ID',
		        align: 'center',
		        visible: true,
		        field: 'bill_id'
		      }, {
		        title: '订单类型',
		        align: 'center',
		        field: 'bill_type'
		      }, {
		        title: '采购商品',
		        align: 'center',
		        field: 'purchase_commodity'
		      },{
		        title: '供应商',
		        align: 'center',
		        field: 'purchase_supplier'
		      },{
		        title: '单价',
		        align: 'center',
		        field: 'purchase_commodity_uprice'
		      },{
		        title: '商品数量',
		        align: 'center',
		        field: 'purchase_commodity_number'
		      },{
		        title: '商品总价',
		        align: 'center',
		        field: 'purchase_commodity_price'
		      },{
		        title: '采购汇总',
		        align: 'center',
		        field: 'purchase_price'
		      },{
		        title: '采购员工',
		        align: 'center',
		        field: 'purchase_staff'
		      },{
		        title: '采购日期',
		        align: 'center',
		        field: 'purchase_date'
		      }, {
		        title: '审核状态',
		        align: 'center',
		        field: 'purchase_status'
		      }, {
		        title: '签名路径',
		        align: 'center',
		        field: 'purchase_img'
		      }, {
		        title: '操作',
		        align: 'center',
		        width: '100px',
		        field: 'bill_id',
		        formatter:function(value,row,index){
		        	var trHtml= "<button type='button' class='btn btn-primary' onclick='updateOne("+JSON.stringify(row)+")' style='margin:10px;'>修改</button>";
		        	trHtml += "<button type='button' class='btn btn-warning' onclick='toSh("+JSON.stringify(row)+")' style='margin10px;'>审核</a><br />";
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
				
				return json;
			}
		});
	})

	//修改
	function updateOne(e) {
		var bill_id = e.bill_id;
		var bill_type = e.bill_type;
		var purchase_commodity = e.purchase_commodity;
		var purchase_supplier = e.purchase_supplier;
		var purchase_commodity_uprice = e.purchase_commodity_uprice;
		var purchase_commodity_number = e.purchase_commodity_number;
		var purchase_commodity_price = e.purchase_commodity_price;
		var purchase_price = e.purchase_price;
		var purchase_staff = e.purchase_staff;
		var purchase_date = e.purchase_date;
		var purchase_status = e.purchase_status;
		if(bill_id != ""){
			layer.open({
				type: 2,
				area: ['700px', '450px'],
				fixed: false,
			 	maxmin: true,
				content: 'toPurchaseUpdate?bill_id='+bill_id+"&bill_type="+bill_type+"&purchase_commodity="+purchase_commodity+"&purchase_supplier="+purchase_supplier+"&purchase_commodity_uprice="+purchase_commodity_uprice+"&purchase_commodity_number="+purchase_commodity_number+"&purchase_commodity_price="+purchase_commodity_price+"&purchase_price="+purchase_price+"&purchase_staff="+purchase_staff+"&purchase_date="+purchase_date+"&purchase_status="+purchase_status
			});
		}
		
	}
	//删除
	function deleteOne(e) {
		var bill_id = e.bill_id;
		$.post("${jpath}/purchase/deleteById",
				{id:bill_id},
				function(data){
			location.reload();
		});
	}
	//审核
	function toSh(e) {
		location.href = bpath+"/purchase/toSh?id="+e.bill_id+"&status="+e.purchase_status+"&img="+e.purchase_img+"&purchase_commodity="+e.purchase_commodity+"&purchase_commodity_number="+e.purchase_commodity_number;
	}
	
	//弹框
	$("#addBtn").click(function(){
		layer.open({
			type: 2,
			area: ['700px', '450px'],
			fixed: false,
			maxmin: true,
			content: 'toPurchaseAdd'
		});
	});
	
</script>