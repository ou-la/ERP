<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
<div style="margin-bottom: 422px;">
	<a href="javascript:void(0);" id="addBtn"
		 style="display:block;width:100px;height:30px;line-height:30px;background: #42A5F5;color: #fff;text-align:center;float:left;">
		 添加
		 <span style="display:none;">关闭</span>
	</a>
	<div class="formDiv" style="float:left;margin-left:30px;margin-bottom: 50px;">
		<div style="display:none;"><span id="formType" style="text-align:left;">修改</span>-数据</div>
		<form method="post">
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="warehouse_id" id="warehouse_id" placeholder="ID" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="warehouse_name" id="warehouse_name" placeholder="仓库名称" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="warehouse_address" id="warehouse_address" placeholder="仓库地址" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="warehouse_describe" id="warehouse_describe" placeholder="仓库描述" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="warehouse_man" id="warehouse_man" placeholder="管理人" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="warehouse_status" id="warehouse_status" placeholder="状态" /></div>
			<div>
				<input type="button" id="saveBtn" class="tfIpt" value="保存" 
				style="width:100px;height:30px;line-height:30px;background:#EF5350;color:#fff;border:0;cursor: pointer;" />
				&nbsp;&nbsp;&nbsp;
				<input type="button" onclick="restForm()" class="tfIpt" value="清空" 
				style="width:100px;height:30px;line-height:30px;background:#FFCA28;color:#fff;border:0;cursor: pointer;" />
			</div>
		</form>
	</div>
</div>