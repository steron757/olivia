<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>后台管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" href="<%=path %>/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=path %>/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="<%=path %>/kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="<%=path %>/kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="<%=path %>/kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content1"]', {
				cssPath : '<%=path %>/kindeditor/plugins/code/prettify.css',
				uploadJson : '<%=path %>/kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '../jsp/file_manager_json.jsp',
				//uploadJson : '<%=path %>/kindEditor_upload',
				//fileManagerJson : '<%=path %>kindEditor_fileManager',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['subjectForm'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['subjectForm'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	<style type="text/css">
		body {
			background-image: url("images/mgr/bg_mgr.jpg");
			background-repeat: repeat-x;
			padding-left: 200px;
		}
	</style>
</head>

<body>
	
	<div>
		<img alt="" src="images/mgr/logo.png">
	</div>
	<font color="red"><s:fielderror /></font>
	<s:actionmessage></s:actionmessage>
	
	<s:form name="subjectForm" action="subject_add" method="post" >
<%--		<s:file name="file" label="文件1"></s:file><br>--%>
<%--		<s:file name="file" label="文件2"></s:file><br>--%>
<%--		<s:file name="file" label="文件3"></s:file><br>--%>
<%--		<s:file name="file" label="文件4"></s:file><br>--%>
		
		<br />
		<textarea name="content1" cols="100" rows="20" style="width:900px;height:400px;visibility:hidden;"></textarea>
		<br />
		<input type="submit" name="button" value="提交内容" /> (提交快捷键: Ctrl + Enter)

	</s:form>

<%-- <s:if test="file!=null">
		<s:iterator value="fileFileName" status="length">
			<img src='<s:property value="#request.path"/>/<s:property value="fileFileName.get(#length.index)"/>' style="width: 200px">
		</s:iterator>
	</s:if>
--%>
</body>
</html>

