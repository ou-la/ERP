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
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_id" id="business_id" placeholder="ID" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_name" id="business_name" placeholder="企业名称" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_linkman" id="business_linkman" placeholder="联系人" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_phone" id="business_phone" placeholder="联系电话" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_contact_another" id="business_contact_another" placeholder="其他联系方式" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_address" id="business_address" placeholder="地址" /></div>
			<div><input type="text" style="width:220px;margin-bottom:5px;padding:5px;" name="business_type" id="business_type" placeholder="企业类型" /></div>

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