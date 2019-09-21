<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="../head.jsp" %>
<style>
.upBtn{
	margin-top:10px;
}
.afile {
    position: relative;
    display: inline-block;
    background: #D0EEFF;
    border: 1px solid #99D3F5;
    border-radius: 4px;
    padding: 4px 12px;
    overflow: hidden;
    color: #1E88C7;
    text-decoration: none;
    text-indent: 0;
    line-height: 20px;
}
.afile input {
    position: absolute;
    font-size: 100px;
    right: 0;
    top: 0;
    opacity: 0;
}
.afile {
    background: #AADFFD;
    border-color: #78C3F3;
    color: #004974;
    text-decoration: none;
}
#upForm{
	margin-top:20px;
}
</style>
<script type="text/javascript">
/* $(function () {
    $("#upload").click(function () {
        //$("#imgWait").show();
        var formData = new FormData();
        formData.append("myfile", document.getElementById("xfile").files[0]);   
        $.ajax({
            url: "${jpath}/warehouse/uploadExcel",
            type: "POST",
            data: formData,
           
           //必须false才会自动加上正确的Content-Type
        
            contentType: false,
            //必须false才会避开jQuery对 formdata 的默认处理
            //XMLHttpRequest会对 formdata 进行正确的处理
         
            processData: false,
            success: function (data) {
                if (data.status == "true") {
                    alert("上传成功！");
                }
                if (data.status == "error") {
                    alert(data.msg);
                }
                //$("#imgWait").hide();
            },
            error: function () {
                alert("上传失败！");
                //$("#imgWait").hide();
            }
        });
    });
}); */
function closePage() {
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}
</script>
<div style="width:100%;padding:2rem;background-color:#fff;">
	<div class="card-header bg-light">
       		Warehouse Table - 盘库文件上传
       		
       		<form action='${jpath}/warehouse/uploadExcel' method='post' enctype='multipart/form-data' id="upForm">
			<a href="javascript:;" class="afile">选择文件
				<input type='file' name='file' id='xfile' />
			</a><br />
			<button type='submit' class='btn btn-success upBtn' onClick="closePage()">上传</button>
		</form>
	</div>
	
</div>
<%@ include file="../js/warehouse__js.jsp" %>
<%@ include file="../bottom.jsp" %>