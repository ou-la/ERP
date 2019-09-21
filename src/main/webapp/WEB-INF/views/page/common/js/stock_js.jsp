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
			
			url: bpath+'/stock/find',
			queryParams:function(params){
				return params;
			},
		      columns: [{
		        title: '物件名称',
		        align: 'center',
		        field: 'stock_name'
		      },{
		        title: '物件类型',
		        align: 'center',
		        field: 'stock_type'
		      },{
		        title: '物件规格',
		        align: 'center',
		        field: 'stock_specifications'
		      },{
		        title: '物件数量',
		        align: 'center',
		        field: 'stock_number'
		      },{
		        title: '真实数量',
		        align: 'center',
		        field: 'stock_actual_number',
		        visible: false
		      },{
		        title: '物件单价（元）',
		        align: 'center',
		        field: 'stock_price'
		      },{
		        title: '物件单位',
		        align: 'center',
		        field: 'stock_company'
		      },{
		        title: '描述',
		        align: 'center',
		        field: 'stock_describe'
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
</script>