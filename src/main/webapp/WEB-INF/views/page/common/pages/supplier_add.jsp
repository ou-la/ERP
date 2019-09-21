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
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_id" id="supplier_id" placeholder="ID" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_name" id="supplier_name" placeholder="商家名称" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_materiel" id="supplier_materiel" placeholder="供应物料" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_type" id="supplier_type" placeholder="商家类型" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_linkman" id="supplier_linkman" placeholder="联系人" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_phone" id="supplier_phone" placeholder="联系电话" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_contact_another" id="supplier_contact_another" placeholder="其他联系方法" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="supplier_address" id="supplier_address" placeholder="商家地址" /></div>
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