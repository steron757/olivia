<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Image Management</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	table{
		border: solid thin;
		padding: 20px;
	}
	td {
		border-bottom: solid thin;
		padding: 10px;
	}
</style>
<script src="<%=path %>/js/jquery-1.7.2.js"></script>

</head>

<body>
	<table>
		<thead>
			<tr><td>图片</td><td>简介</td><td>描述</td></tr>
		</thead>
		<s:iterator var="img" value="#request.imageList">
			<tr>
				<td><img style='width:280px' src='<%=path%>/<s:property value="#img.path"/>' /><br /></td>
				<td>
					<input type="hidden" value="<s:property value="#img.id" />"/>
					<span><s:property value="#img.briefDescription" /></span><br />
					<a href="javascript:void(0)" onclick="showmfd('<s:property value="#img.id" />')">修改</a><br />
					<textarea id="bd<s:property value="#img.id" />" name='briefDescription' style="width: 200px;display: none;"></textarea><br>
					<input name="submit1" id="s1<s:property value="#img.id"/>" type="button" value='确定' style="display: none"/><br>
				</td>
				<td>
					<input type="hidden" value="<s:property value="#img.id" />"/>
					<span><s:property value="#img.description" /></span><br />
					<a href="javascript:void(0)" onclick="showmfd2('<s:property value="#img.id" />')">修改</a><br />
					<textarea id="d<s:property value="#img.id" />" name='description' style="width: 200px;display: none;"></textarea><br>
					<input name="submit2" id="s2<s:property value="#img.id"/>" type="button" value='确定' style="display: none"/><br>
				</td>
			</tr>
		</s:iterator>
	</table>
</body>
<script type="text/javascript">
function showmfd(id){
	var t = $("#bd"+id);
	var s1 = $("#s1"+id);
	t.toggle(300);
	s1.toggle(300);
};
function showmfd2(id){
	var t = $("#d"+id);
	var s2 = $("#s2"+id);
	t.toggle(300);
	s2.toggle(300);
};

$(document).ready(function() {
	var submit1 = $("input[name='submit1']");
	submit1.bind("click",function(e) {
		var formURL = "product/img_modifyImageInfo";
		var td = $(this).parent();
		var desc = $(this).parent().children("textarea").val();
		var id = $(this).parent().children("input:first").val();
		$.ajax({
			url : formURL, type : "POST",
			data : { column:"1", pid: id, briefDescription: desc, },
			success : function(data, textStatus, jqXHR) {
				td.children("span").html(desc);
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert("Error:" + jqXHR);
			}
		});
		e.preventDefault();
	});
	var submit2 = $("input[name='submit2']");
	submit2.bind("click",function(e) {
		var formURL = "product/img_modifyImageInfo";
		var td = $(this).parent();
		var desc = $(this).parent().children("textarea").val();
		var id = $(this).parent().children("input:first").val();
		$.ajax({
			url : formURL, type : "POST",
			data : { column:"2", pid: id, description: desc, },
			success : function(data, textStatus, jqXHR) {
				td.children("span").html(desc);
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert("Error:" + jqXHR);
			}
		});
		e.preventDefault();
	});
});
</script>
</html>
