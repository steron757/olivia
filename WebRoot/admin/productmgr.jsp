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

<title>Product Manager</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%--<script type="text/javascript" src="<%=path %>/js/jquery-1.4.2.min.js"></script>--%>
<script src="<%=path %>/js/jquery-1.7.2.js"></script>
<%--<script src="http://malsup.github.com/jquery.form.js"></script>--%>
<script src="http://oss.maxcdn.com/jquery.form/3.50/jquery.form.min.js"></script>
<style type="text/css">
	body{
		padding: 20px;
	}
</style>

</head>

<body>
	<a href="product/pr_list">产品列表</a>
	<input type="button" value="新增" onclick="$('#addDiv').toggle(300)"/>
	<div id="addDiv" style="display: none;">
		<form id="addProductForm" action="product/pr_add" method="post" enctype="multipart/form-data">
			标题：<input id="newTitle" name="title" type="text" style="width: 600px"/><br/>
			简介：<textarea id="newContent" name="description" rows="5" style="width: 600px"></textarea><br/>
			封面：<input type="file" name="cover"><br/>
			<input type="submit" value="确定" id="doAddProduct">
		</form>
	</div>
	<hr/>
	<s:iterator value="#request.productList" var="p">
		<div id="d<s:property value="#p.id"/>">
			标题：<span id="t<s:property value="#p.id"/>"><s:property value="#p.title"/></span><br>
			简介：<span id="de<s:property value="#p.id"/>"><s:property value="#p.introduction"/></span><br>
			<a href="javascript:void(0)" onclick="showModify('<s:property value="#p.id"/>')">修改</a>
			<a href="product/img_tomdf?pid=<s:property value="#p.id"/>" target="_blank">图片</a>
			<a href="javascript:void(0)" onclick="del('<s:property value="#p.id"/>')">删除</a>
			<br/>
			<form id="f<s:property value="#p.id"/>" name="myform" action="product/mdfp" method="post">
				<div id="c<s:property value="#p.id"/>" style="display: none;">
					<input type="hidden" name="pid" value="<s:property value="#p.id"/>">
					<input type='text' name='title' style="width: 600px"/><br>
					<textarea name='description' rows="5" style="width: 600px"></textarea><br>
					<input name="submit" id="s<s:property value="#p.id"/>" type="button" value='确定'/><br>
				</div>
			</form>
			<br>
		</div>
	</s:iterator>
</body>

<script type="text/javascript">
	function showModify(id){
		var div = $("#c"+id);
		div.toggle(300);
	};

	function del(pid){
		if(confirm('确定删除?')==true){
			window.location.href='product/pr_del?pid='+pid;
		}
	}
	$(document).ready(function() {
		//var forms = $("form[name='myform']");
		var submits = $("input[name='submit']");
		submits.bind("click",function(e) {
			var formi = $(this)[0].parentElement.parentElement;
			var formURL = formi.action;
			$.ajax({
				url : formURL,
				type : "POST",
				data : {
					pid: formi[0].value,
					title: formi[1].value,
					description: formi[2].value,
				},
				success : function(data, textStatus, jqXHR) {
					$("#t" + formi[0].value).html(formi[1].value);
					$("#de" + formi[0].value).html(formi[2].value);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("Error:" + jqXHR);
				}
			});
			e.preventDefault(); //STOP default action
			//e.unbind(); //unbind. to stop multiple form submit.
		});
		
		
		var doAddProduct = $("#doAddProduct");
		doAddProduct.bind("click", function(e){
			/*
			$.ajax({
				url : "product/pr_add", type : "POST",
				data : { title: $("#newTitle").val(), description: $("#newContent").val(), },
				success : function(data, textStatus, jqXHR) { alert("add success"); },
				error : function(jqXHR, textStatus, errorThrown) { alert("Error:" + jqXHR); }
			});*/
			/*
			$("#addProductForm").ajaxSubmit({
				type : "post",
				url : "product/pr_add",
				dataType : "json",
				success : function(result) {
					alert(result);
				}
			});*/
		});
	});
</script>
</html>
